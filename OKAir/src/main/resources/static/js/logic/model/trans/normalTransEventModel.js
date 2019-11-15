/**
 * 封装事件处理相关函数
 */
define(['moment'],function( moment) {
	
	// 初始化操作信息
	var initTransInfoForm = function(info) {
		$('#formAssetsTrans input, #formAssetsTrans textarea').val('');
		
		$('#tbxAssetsInfo').val(info.assetscode + ' ' + info.assetsnamecn);
		$('#tbxPrice').val(formatCurrency(info.price));
		$('#tbxTransDate').val(moment().format('YYYY-MM-DD'));
		$('#tbxHandlerEmp').val(info.targetempname);
		
		localStorage.setItem('info', JSON.stringify(info));
		
		$('.modal-footer > .btn').show();
	};
	
	// 共通表格列
	var baseColumns = [
		{title:'', checkbox:true},
		{field:'assetsnamecn', title:"资产名称",halign:'center'},
		{field:'batchno', title:"批次编号",halign:'center'},
		{field:'price', title:"单价（￥）",halign:'center', align:'right',
	     formatter: function(value, row, index) {
	    	 return formatCurrency(value);
	     }}
	];
	
	// 表格显示共通函数
	var buildTable = function(params) {
		$(params.tableId).bootstrapTable('destroy');
		$(params.tableId).bootstrapTable({
			url:baseUrl + params.url,
			method:'post',
			contentType: "application/x-www-form-urlencoded",
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			pageSize: 7,
			uniqueId:'id',
			queryParams:function(param) {
				return {
					assetsnamecn:$('#tbxAssetsName').val(),
					batchno:$('#tbxBatchNo').val()
				};
			},
			columns: baseColumns.concat(params.columns),
			onPostBody:function(data) {
				$(params.btnClass).click(params.event);
			}
		});
	};
	
	// 计算总价
	var calTotalPrice = function(evt) {
		var count = $('#tbxCount').val();
		var price = $('#tbxPrice').val().replace(',','');
		
		$('#tbxTotalPrice').val(formatCurrency(count * price));
	};
	
	// 操作类型选择功能
	var changeTransType = function(evt) {
		var type = $('#selTransType').val();
		if(type == 2) { // 资产领用
			$('#checkOutList').show(300);
			$('#shiftList').hide(300);
		} else if(type == 4) { // 资产转移
			$('#checkOutList').hide(300);
			$('#shiftList').show(300);
		}
	};
	
	// 检索按钮
	var searchButtonClick = function(evt) {
		var type = $('#selTransType').val();
		if(type == 2) { // 资产领用
			buildTable({
				tableId:'#tblCheckoutResult',
				url:'/logic/trans/normal/checkin/list',
				columns: [
					{field:'currentamount', title:"当前库存量",halign:'center', align:'center'},
					{field:'handlerempname', title:'采购人',halign:'center'},
					{field:'instocktime', title:'入库日期',halign:'center', 
					 formatter: function(value,row, index) {
						 return moment(value).format('YYYY-MM-DD');
					}},
					{field:'id',
					 align:'center',halign:'center',
					 title: '领用操作',
					 formatter: function(value, row, index) {
						 return '<button value="' + value + '" class="checkout btn btn-info">' +
						 		'	<span class="glyphicon glyphicon-new-window" /> 领用' +
						 		'</button>';
					 }
					}
				],
				btnClass: '.checkout',
				event: checkoutClick
			});
			
		} else if(type == 4) { // 资产转移
			buildTable({
				tableId:'#tblShiftResult',
				url:'/logic/trans/normal/checkout/list',
				columns: [
					{field:'currentamount', title:'持有数量', align:'center', halign:'center'},
					{field:'targetempname', title:'当前持有人',halign:'center'},
					{field:'instocktime', title:'领用时间',halign:'center',
					 formatter: function(value,row, index) {
						 return moment(value).format('YYYY-MM-DD');
					}},
					{field:'id',
					 align:'center',halign:'center',
					 title: '转移操作',
					 formatter: function(value, row, index) {
						 return '<button value="' + value + '" class="shift btn btn-info">' +
						 		'	<span class="glyphicon glyphicon-retweet" /> 转移' +
						 		'</button>';
					 }
					}
				],
				btnClass: '.shift',
				event: shiftClick
			});
		}
	};
	
	// 领用按钮实现
	var checkoutClick = function(evt) {
		var table = $('#tblCheckoutResult');
		var selected = table.bootstrapTable('getRowByUniqueId',this.value);
	
		initTransInfoForm(selected);
		$('#btnShift').hide();
		$('#divHandlerEmp').hide();
		$('#spanTransType').html('资产领用');
		$('#divAssetsTrans').modal();
	};

	// 转移按钮实现
	var shiftClick = function(evt) {
		var table = $('#tblShiftResult');
		var selected = table.bootstrapTable('getRowByUniqueId',this.value);
		
		initTransInfoForm(selected);
		$('#btnCheckout').hide();
		$('#divHandlerEmp').show();
		$('#spanTransType').html('资产转移');
		$('#divAssetsTrans').modal();
	};
	
	// 资产操作按钮
	var transButtonClick = function(evt) {
		var type = $('#selTransType').val();
		var info = JSON.parse(localStorage.getItem('info'));
		$.post(
			baseUrl + '/logic/trans/normal/' + type ,
			{
				assetsid:info.assetsid,
				count:$('#tbxCount').val(),
				batchno: info.batchno,
				price: $('#tbxPrice').val().replace(',',''),
				instocktime: $('#tbxInstrocktime').val(),
				targetemp: $('#selTargetEmp').val(),
				handleremp: info.targetemp,
				comment: $('#tbxTransComment').val()
		}, function(result){
			$("#divTransAlert").show();

			if(result.success) {
				$("#divTransAlert").fadeOut(2000);
				$("#divTransAlert").html("<span class='glyphicon glyphicon-ok' /> 资产操作成功");
				$("#divTransAlert").css("alert alert-success");
				setTimeout("$('#divAssetsTrans').modal('hide')",1000);
			} else {
				$("#divTransAlert").html("<span class='glyphicon glyphicon-remove' /> 资产操作失败，请联系开发人员");
				$("#divTransAlert").css("alert alert-danger");
			}
		});
	};
	
	// 对外开放的函数列表
	return {
		changeTransType: changeTransType,
		searchButtonClick: searchButtonClick,
		transButtonClick: transButtonClick,
		calTotalPrice: calTotalPrice
	};
});
