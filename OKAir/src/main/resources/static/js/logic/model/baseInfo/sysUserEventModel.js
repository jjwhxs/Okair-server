/**
 * 封装事件处理相关函数
 */
define(["moment"],function(moment) {
	
	// 检索按钮
	var searchButtonClick = function(evt) {
		$("#tblResult").bootstrapTable('destroy');
		$("#tblResult").bootstrapTable({
			url:baseUrl + "/logic/baseInfo/sysUser/find",
			method:'post',
			pagination: true,
			singleSelect: true,
			clickToSelect: true,
			contentType: "application/x-www-form-urlencoded",
			queryParams:function(param) {
				return {
					'uid':$('#tbxUid').val(),
					'role':$('#selSysUserRole').val()
				};
			},
			columns: [
				{field:'uid',title:"<span class='glyphicon glyphicon-tags' /> 用户名", halign:'center'},
				{field:'role', title:"权限", halign:'center'},
				{field:'nickname', title:"昵称", halign:'center'},
				{field:'createtime', title:"创建时间", halign:'center'}
			]
		});
	};
	
	
	// 对外开放的函数列表
	return {
		searchButtonClick : searchButtonClick
	};
});
