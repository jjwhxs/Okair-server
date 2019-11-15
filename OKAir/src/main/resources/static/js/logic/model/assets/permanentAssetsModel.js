/**
 * 
 */
// 加载页面依赖模块
require(['jquery', 'moment' , 'bootstrapTable', 'bootstrapTableZhCN', 'bootstrapSwitch', 'bootstrapSelect',
		 'logic/model/assets/permanentAssetsInitModel',
		 'logic/model/assets/permanentAssetsEventModel'], function($, moment, table, zhcn, btswitch, bSelect, pageInit, pageEvent){
	
	// 设置页面全局日期格式
	moment.locale('zh-cn');

	// 页面加载
	$(document).ready(function() {
		
		// 初始化页面显示效果
		pageInit.initPageStyle();
		
		// 按钮事件绑定
		$('#btnAdd').click(pageEvent.addButtonClick);
		$('#btnInstockShow').click(pageEvent.instockShowButtonClick);
		$('#btnInstock').click(pageEvent.instockButtonClick);
		$('#btnEdit').click(pageEvent.editButtonClick);
		$('#btnSaveAssets').click(pageEvent.saveButtonClick);
		$('#btnSearch').click(pageEvent.searchButtonClick);
		
		$('#tbxInstockCount, #tbxInstockPrice').on('change', pageEvent.calTotalPrice);
		
		// 类别下拉列表联动
		$('#selCategory1').on('changed.bs.select', function(evt) {
			pageInit.initCategoryByParentId('#selCategory2', this.value, true);
		});
		$('#selCategoryEdit1').on('changed.bs.select', function(evt) {
			pageInit.initCategoryByParentId('#selCategoryEdit2', this.value, false);
		});
		
		// 初始化页面数据（例如加载下拉列表）
		pageInit.initData();
		
	});

});