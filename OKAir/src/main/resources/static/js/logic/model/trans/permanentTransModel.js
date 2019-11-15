/**
 * 
 */
// 加载页面依赖模块
require(['jquery', 'moment' , 'bootstrapTable', 'bootstrapTableZhCN', 'bootstrapSelect',
		 'logic/model/trans/permanentTransInitModel',
		 'logic/model/trans/permanentTransEventModel'], 
		 function($, moment, table, zhcn, bSelect, pageInit, pageEvent){
	
	// 设置页面全局日期格式
	moment.locale('zh-cn');
	
	// 页面加载
	$(document).ready(function() {
		
		// 初始化页面显示效果
		pageInit.initPageStyle();
		
		// 按钮事件绑定
		$('#btnSearch').click(pageEvent.searchButtonClick);
		$('#selTransType').on('changed.bs.select', pageEvent.changeTransType);
		$('#btnCheckout, #btnShift').click(pageEvent.transButtonClick);
		$('#tbxCount').change(pageEvent.calTotalPrice);
		
		// 初始化页面数据（例如加载下拉列表）
		pageInit.initData();
		
	});

});