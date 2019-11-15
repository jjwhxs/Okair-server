/**
 * 封装事件处理相关函数
 */
define(["moment"],function(moment) {
	
	// 检索按钮
	var searchButtonClick = function(evt) {
		$("#tblResult").bootstrapTable('destroy');
		$("#tblResult").bootstrapTable({
			url:baseUrl + "/logic/baseInfo/sysDict/find",
			method:'post',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			contentType: "application/x-www-form-urlencoded",
			queryParams:function(param) {
				return {
					'display':$('#tbxDisplay').val(),
					'typecode':$('#selDictType').val()
				};
			},
			columns: [
				{field:'value',title:"<span class='glyphicon glyphicon-tags' /> 编码值", halign:'center'},
				{field:'display', title:"显示值", halign:'center'},
				{field:'typecode', title:"所属类别", halign:'center'},
				{field:'desc', title:"备注信息", halign:'center'}
			]
		});
	};
	
	
	// 对外开放的函数列表
	return {
		searchButtonClick : searchButtonClick
	};
});
