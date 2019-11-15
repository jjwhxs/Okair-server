/**
 * 封装事件处理相关函数
 */
define(['logic/model/assets/normalAssetsInitModel', 'moment'],function(initPage, moment) {
	
	// 清空资产信息表单
	var clearAssetsInfoForm = function() {
		$('#selCategoryEdit1, #selCategoryEdit2, #selPackageTypeEdit').val(null).trigger('change');
		$('#formAssetsInfo input, #formAssetsInfo textarea').val('');
		$('#cbkConsumptiveEdit').bootstrapSwitch('state', false);
	};
	
	// 清空入库信息表单
	var clearAssetsInstockForm = function() {
		$('#selHandlerEmp').val(null).trigger('change');
		$('#formInstock input, textarea').val('');
		$('#tbxInstockDate').val(moment().format('YYYY-MM-DD'));

	};
	
	// 计算总价
	var calTotalPrice = function(evt) {
		var count = $('#tbxInstockCount').val();
		var price = $('#tbxInstockPrice').val();
		
		$('#tbxTotalPrice').val(formatCurrency(count * price));
	};
	
	// 打开添加资产按钮（清空内容）
	var addButtonClick = function(evt) {
		clearAssetsInfoForm();
		$('#divAssetsInfo').modal();
	};

	// 打开资产入库界面按钮
	var instockShowButtonClick = function(evt) {
		clearAssetsInstockForm();
		var table = $('#tblResult');
		var selected = table.bootstrapTable('getSelections');
		if(selected!=undefined && selected.length===1) {
			var result = selected[0];
			$('#hidAssetsIdForInstock').val(result.id);
			$('#tbxAssetsNameForInstock').val(result.namecn);
			
			$('#divAssetsInstock').modal();
		} else {
			alert('请选中记录后再进行相关操作');
		}

	};

	// 打开资产信息编辑按钮
	var editButtonClick = function(evt) {
		clearAssetsInfoForm();
		var table = $('#tblResult');
		var selected = table.bootstrapTable('getSelections');
		if(selected!=undefined && selected.length===1) {
			var result = selected[0];
			$('#hidAssetsId').val(result.id);
			$('#tbxAssetsNameEdit').val(result.namecn);
			$('#tbxAssetsCodeEdit').val(result.assetscode);
			$('#tbxNormalBrandEdit').val(result.normalbrand);
			$('#tbxNormalModelEdit').val(result.normalmodel);
			$('#tbxSupplierEdit').val(result.supplier);
			$('#selPackageTypeEdit').selectpicker('val', result.packagetype);
			$('#tbxSupplierTelEdit').val(result.suppliertel);
			$('#cbkConsumptiveEdit').bootstrapSwitch('state', result.consumptive);
			$('#tbxCommentEdit').val(result.comment);
			$.post(baseUrl + '/logic/baseInfo/category/' + result.assetstype,{},
				function(result) {
					$('#selCategoryEdit1').selectpicker('val', result.parentid);
					initPage.initCategoryByParentId('#selCategoryEdit2', result.parentid, false, result.id);
				}
			);
			
			$('#divAssetsInfo').modal();
		} else {
			alert('请选中记录后再进行相关操作');
		}
	};
	
	// 打开显示库存操作记录
	var transHistoryClick = function(evt) {
		$('#tblTransHistory').bootstrapTable('destroy');
		$('#tblTransHistory').bootstrapTable({
			url:baseUrl + '/logic/trans/normal/history/' + this.value,
			method:'post',
			contentType: 'application/x-www-form-urlencoded',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			columns:[
				{title:'批次编号',
					halign:'center',
					field:'batchno'},
				{title:'操作内容',
					field:'transtype',
					align:'center',
					halign:'center',
					formatter:function(value, row, index) {
						switch(value){
						case '1':
							return '入库';
						case '2':
							return '出库';
						case '3':
							return '报废\出售';
						case '4':
							return '转移';
						}
					}},
				{title:'操作时间',
					field:'instocktime',
					halign:'center',
					formatter:function(value, row, index) {
						return moment(value).format('YYYY-MM-DD');
					}},
				{title:'单价(￥)',
					align:'right',
					halign:'center',
					field:'price', 
					formatter:function(value,row,index) {
				    return formatCurrency(value);
				}},
				{title:'数量',
					halign:'center',
					field:'count'},
				{title:'合计(￥)',
					align:'right',
					halign:'center',
					formatter:function(value,row,index){
						return formatCurrency(row.price * row.count);
					}},
				{title:'经办人',
					halign:'center',
					field:'handlerempname'},
				{title:'接手人',
					halign:'center',
					field:'targetempname'}
			],
			onPostBody:function(data) {
				var instockCount = 0;
				var outstockCount = 0;
				$.each(data, function(index, item) {
					if(item.transtype == '1')
						instockCount += item.count;
					if(item.transtype == '2')
						outstockCount += item.count;
				});
				$('#spanInstockCount').html(instockCount);
				$('#spanDeliveryCount').html(outstockCount);
				$('#spanStockCount').html(instockCount - outstockCount);
			}
		});
		$('#divTransHistory').modal();
	};
	
	// 资产信息保存按钮
	var saveButtonClick = function(evt) {
		
		$.post(baseUrl + '/logic/assets/normal/save',
				{
					id:$('#hidAssetsId').val(),
					namecn:$('#tbxAssetsNameEdit').val(),
					assetstype:$('#selCategoryEdit2').val(),
					supplier:$('#tbxSupplierEdit').val(),
					normalbrand:$('#tbxNormalBrandEdit').val(),
					normalmodel:$('#tbxNormalModelEdit').val(),
					packagetype:$('#selPackageTypeEdit').val(),
					suppliertel:$('#tbxSupplierTelEdit').val(),
					consumptive:$('#cbkConsumptiveEdit').bootstrapSwitch('state'),
					comment:$('#tbxCommentEdit').val()
				},
				function(result) {
					$('#divEditAlert').show();
					
					if(result.success) {
						clearAssetsInfoForm();
						$('#divEditAlert').fadeOut(2000);
						$('#divEditAlert').html('<span class="glyphicon glyphicon-ok" /> 资产信息保存成功');
						$('#divEditAlert').removeClass().addClass('alert alert-success');
						setTimeout('$("#divAssetsInfo").modal("hide")',1000);
					} else {
						$('#divEditAlert').html('<span class="glyphicon glyphicon-remove" /> 信息保存操作失败，请联系开发人员');
						$('#divEditAlert').removeClass().addClass('alert alert-danger');
					}

					$('#tblResult').bootstrapTable('refresh');
				}
		);
	};
	
	// 确认资产入库按钮
	var instockButtonClick = function(evt) {
		$.post(baseUrl + '/logic/trans/normal/instock',{
			assetsid : $('#hidAssetsIdForInstock').val(),
			count : $('#tbxInstockCount').val(),
			price : $('#tbxInstockPrice').val(),
			handleremp : $('#selHandlerEmp').val(),
			instocktime : $('#tbxInstockDate').val(),
			comment : $('#tbxInstockComment').val()
		},function(result) {
			$('#divInstockAlert').show();

			if(result.success) {
				clearAssetsInfoForm();
				$('#divInstockAlert').fadeOut(2000);
				$('#divInstockAlert').html('<span class="glyphicon glyphicon-ok" /> 资产入库成功');
				$('#divInstockAlert').removeClass().addClass('alert alert-success');
				setTimeout('$("#divAssetsInstock").modal("hide")',1000);
			} else {
				$('#divInstockAlert').html('<span class="glyphicon glyphicon-remove" /> 资产入库失败，请联系开发人员');
				$('#divInstockAlert').removeClass().addClass('alert alert-danger');
			}
		});
	};
	
	// 检索按钮
	var searchButtonClick = function(evt) {
		$('#tblResult').bootstrapTable('destroy');
		$('#tblResult').bootstrapTable({
			url:baseUrl + '/logic/assets/normal/list',
			method:'post',
			contentType: 'application/x-www-form-urlencoded',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			queryParams:function(param) {
				return {
					'assetsCode':$('#tbxAssetsCode').val(),
					'assetsType2':$('#selCategory2').val(),
					'assetsType1':$('#selCategory1').val(),
					'assetsNameCn':$('#tbxAssetsName').val(),
					'packageType':$('#selPackageType').val(),
					'supplier':$('#tbxSupplier').val(),
					'consumptive':$('#cbkConsumptive').bootstrapSwitch('state')
				};
			},
			columns: [
				{title: '', checkbox:true},
				{field: 'assetscode', title: '<span class="glyphicon glyphicon-tags" /> 资产编号'},
				{field: 'namecn', title: '资产名称'},
				{field: 'normalbrand', title: '品牌'},
				{field: 'normalmodel', title: '型号'},
				{field: 'supplier', title: '供货商', 
				 formatter: function(value, row, index) {
					return row.supplier + '<br/>' + row.suppliertel;
				 }
				},
				{field: 'id',
				 align: 'center',
				 title: '库存记录',
				 formatter: function(value, row, index) {
					 return '<button value="' + value + '" class="transList btn btn-info">' +
					 		'	<span class="glyphicon glyphicon-th-list" /> 记录' +
					 		'</button>'
				 }
				}
			],
			onPostBody:function(data) {
				$('.transList').click(transHistoryClick);
			}
		});
	};
	
	
	// 对外开放的函数列表
	return {
		addButtonClick : addButtonClick,
		instockShowButtonClick: instockShowButtonClick,
		instockButtonClick: instockButtonClick,
		editButtonClick : editButtonClick,
		searchButtonClick : searchButtonClick,
		saveButtonClick : saveButtonClick,
		calTotalPrice : calTotalPrice
	};
});
