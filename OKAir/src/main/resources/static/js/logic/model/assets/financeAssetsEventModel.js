/**
 * 封装事件处理相关函数
 */
define(['logic/model/assets/financeAssetsInitModel', 'moment'],function(initPage, moment) {
	
	// 清空资产信息表单
	var clearAssetsInfoForm = function() {
		$('#selCategoryEdit1, #selCategoryEdit2, #selFinanceTypeEdit').val(null).trigger('change');
		$('#formAssetsInfo input, #formAssetsInfo textarea').val('');
		$('#cbkAutoCycleEdit').bootstrapSwitch('state', false);
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
		var cycle = $('#hidCycle').val()==''?1:$('#hidCycle').val();
		
		var amount = (1 + (count / 100 / 12 * cycle)) * price;
		
		$('#tbxTotalPrice').val(amount);
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
			$('#hidCycle').val(result.cycle);
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
			
			$('#tbxOrganizationEdit').val(result.organization);
			$('#tbxRefBankNoEdit').val(result.refbankno);
			$('#tbxUnitAmountEdit').val(result.unitamount);
			$('#selFinanceTypeEdit').selectpicker('val', result.financetype);
			$('#tbxCycleEdit').val(result.cycle);
			$('#ckbAutoCycleEdit').bootstrapSwitch('state', result.autocycle);
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
			url:baseUrl + '/logic/trans/finance/history/' + this.value,
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
							return '登记';
						case '2':
							return '转出';
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
				{title:'单位金额(￥)',
					align:'right',
					halign:'center',
					field:'price', 
					formatter:function(value,row,index) {
				    return formatCurrency(value);
				}},
				{title:'年化收益率（%）',
					halign:'center',
					field:'count'},
				{title:'预期合计(￥)',
					align:'right',
					halign:'center',
					formatter:function(value,row,index){
						var assets = $('#tblResult').bootstrapTable('getRowByUniqueId', row.assetsid);
						var amount = (1 + (row.count / 100 / 12 * assets.cycle)) * row.price;
						return formatCurrency(amount);
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
		
		$.post(baseUrl + '/logic/assets/finance/save',
				{
					id:$('#hidAssetsId').val(),
					namecn:$('#tbxAssetsNameEdit').val(),
					assetstype:$('#selCategoryEdit2').val(),
					
					cycle: $('#tbxCycleEdit').val(),
					unitamount: $('#tbxUnitAmountEdit').val(),
					organization: $('#tbxOrganizationEdit').val(),
					financetype: $('#selFinanceTypeEdit').val(),
					refbankno: $('#tbxRefBankNoEdit').val(),
					autocycle: $('#ckbAutoCycleEdit').bootstrapSwitch('state'),
					comment: $('#tbxCommentEdit').val()
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
		$.post(baseUrl + '/logic/trans/finance/instock',{
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
			url:baseUrl + '/logic/assets/finance/list',
			method:'post',
			contentType: 'application/x-www-form-urlencoded',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			uniqueId:'id',
			queryParams:function(param) {
				return {
					'assetsCode':$('#tbxAssetsCode').val(),
					'assetsType2':$('#selCategory2').val(),
					'assetsType1':$('#selCategory1').val(),
					'assetsNameCn':$('#tbxAssetsName').val(),
					'financeType':$('#selPackageType').val(),
					'organization':$('#tbxOrganization').val(),
					'refBankNo':$('tbxRefBankNo').val(),
					'autoCycle':$('#ckbAutoCycle').bootstrapSwitch('state')
				};
			},
			columns: [
				{title: '', checkbox:true},
				{field: 'assetscode', title: '<span class="glyphicon glyphicon-tags" /> 资产编号'},
				{field: 'namecn', title: '资产名称'},
				{field: 'organization', title: '托管机构'},
				{field: 'refbankno', title: '关联账号'},
				{field: 'cycle', title: '期限（月）', align:'center'},
				{field: 'id',
				 align: 'center',
				 title: '登记记录',
				 formatter: function(value, row, index) {
					 return '<button value="' + value + '" class="transList btn btn-info">' +
					 		'	<span class="glyphicon glyphicon-th-list" /> 记录' +
					 		'</button>';
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
