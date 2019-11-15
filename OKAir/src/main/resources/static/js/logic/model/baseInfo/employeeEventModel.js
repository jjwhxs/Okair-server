/**
 * 封装事件处理相关函数
 */
define(["moment"],function(moment) {
	
	// 检索按钮
	var searchButtonClick = function(evt) {
		$("#tblResult").bootstrapTable('destroy');
		$("#tblResult").bootstrapTable({
			url:baseUrl + "/logic/baseInfo/employee/find",
			method:'post',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			contentType: "application/x-www-form-urlencoded",
			queryParams:function(param) {
				return {
					'namecn':$('#tbxNamecn').val(),
					'dept':$('#selDept').val()
				};
			},
			columns: [
				{field:'empno',title:"<span class='glyphicon glyphicon-tags' /> 员工编号", halign:'center'},
				{field:'namecn', title:"姓名", halign:'center'},
				{field:'dept', title:"所在部门", halign:'center'},
				{field:'reporttoname', title:"上级", halign:'center'}
			]
		});
	};
	
	
	// 对外开放的函数列表
	return {
		searchButtonClick : searchButtonClick
	};
});
