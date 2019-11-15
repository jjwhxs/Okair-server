/**
 * 用于项目初始化，包括样式初始化，下拉列表项目初始化
 */
// 页面初始化
define(function() {
	
	// 初始化页面样式及表现形式
	var initPageStyle = function() {
		// 显示格式规范
		$(".row").css("margin-top", "10px");
		$("#divSearchForm").css("line-height", "38px");
		$("#divSearchForm > div").css("margin-left", "10px");

		// 页面控件初始化样式
		$("input").addClass('form-control');
		$("label").addClass('control-label');
		$("button").addClass('btn');

		$("#divSearchForm").addClass("form-inline");
		$("#divSearchForm > div").addClass("form-group");

		// 设定下拉列表样式
		$("select").selectpicker({width:'130px', noneSelectedText:"请选择..."});
		
		// 表格样式
		$("table").addClass("table table-striped table-hover");
		
		// 设定表格语种
		$("table").bootstrapTable({locale:'zh-CN'});

	};
	
	// 初始化权限下拉列表
	var initDictType = function() {
		$.post(baseUrl +'/logic/baseInfo/sysDict/typeList', {}, function(result) {
			$('#selDictType').empty();
			option = new Option("全部","-1");
			$('#selDictType').append(option);
			$.each(result, function(index, item) {
				option = new Option();
				option.text = item.typecode;
				option.value = item.typecode;
				$('#selDictType').append(option);
			});
			
			$('#selDictType').selectpicker("refresh");
			$('#selDictType').selectpicker("render");
		});
	};
	
	// 初始化下拉列表数据
	var initData = function() {
		
		initDictType();
	};
	
	// 对外开放接口列表
	return {
		initPageStyle : initPageStyle,
		initData : initData
	};
});