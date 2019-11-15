/**
 * 用于项目初始化，包括样式初始化，下拉列表项目初始化
 */
// 页面初始化
define(function() {
	
	// 初始化页面样式及表现形式
	var initPageStyle = function() {
		// 显示格式规范
		$('.row').css('margin-top', '10px');
		$('#divSearchForm').css('line-height', '38px');
		$('#divSearchForm > div').css('margin-left', '10px');
		$('#divTransAlert').css('display', 'none');
		$('.glyphicon-asterisk').css('color','red');
		
		// 页面控件初始化样式
		$('input, textarea').addClass('form-control');
		$('label').addClass('control-label');
		$('button').addClass('btn');
		
		$('#divSearchForm').addClass('form-inline');
		$('#divSearchForm > div, #divTransContent > div').addClass('form-group');
		
		$('#divAssetsTrans').addClass('modal fade');
		$('#formAssetsTrans').addClass('form-horizontal');
		$('#formAssetsTrans label').addClass('col-sm-3');
		$('#formAssetsTrans .input-group').addClass('col-sm-8');
		
		$('#divTransAlert').addClass('alert alert-success');
		
		// 设定下拉列表样式
		$('select').selectpicker({width:'130px'});
		
		// 表格样式
		$('table').addClass('table table-striped table-hover');
		
		// 设定表格语种
		$('table').bootstrapTable({locale:'zh-CN'});
		
		// 数据显示
		$('#checkOutList').show();
		$('#shiftList').hide();
	};
	
	// 初始化员工下拉列表
	var initEmployee =function() {
		$.post(baseUrl + '/logic/baseInfo/employee/list', {}, function(result) {
			$('#selTargetEmp').empty();
			var dept = '';
			$.each(result, function(index, emp) {
				if(dept != emp.dept) {
					group = $('<optgroup />');
					group.attr('label', emp.dept);
					dept = emp.dept;
					$('#selTargetEmp').append(group);
				}
				option = new Option();
				option.text = emp.empno + ' ' + emp.namecn;
				option.value = emp.id;
				
				group.append(option);
			});
			
			$('#selTargetEmp').selectpicker('refresh');
			$('#selTargetEmp').selectpicker('render');
		});
	};
	
	// 初始化需要外部加载的数据
	var initData = function() {
		initEmployee();
	};
	
	// 对外开放接口列表
	return {
		initPageStyle : initPageStyle,
		initData : initData
	};
});