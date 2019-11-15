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
		$('#divAssetsInfo, #divAssetsInstock, #divTransHistory, #divEditAlert, #divInstockAlert')
				.css('display', 'none');
		$('.glyphicon-asterisk').css('color','red');
		$('#divAssetsStocking').css('font-weight','bold');
		$('#divAssetsStocking span').css('margin-right','15px');
		$('#spanDeliveryCount').css('color', 'red');
		$('#spanStockCount').css('color', 'blue');

		// 页面控件初始化样式
		$('input, textarea').addClass('form-control');
		$('label').addClass('control-label');
		$('button').addClass('btn');

		$('#divSearchForm').addClass('form-inline');
		$('#divSearchForm > div, #divEditContent > div, #divInstockContent > div')
				.addClass('form-group');

		$('#divAssetsInfo, #divAssetsInstock, #divTransHistory').addClass('modal fade');
		$('#formAssetsInfo, #formInstock').addClass('form-horizontal');
		$('#formAssetsInfo label, #formInstock label').addClass('col-sm-4');
		$('#formAssetsInfo .input-group, #formInstock .input-group').addClass(
				'col-sm-7');
		$('#divEditAlert').addClass('alert alert-success');

		$('input[type="checkbox"]').bootstrapSwitch({
			onText : '是',
			offText : '否',
			size : 'small'
		});

		// 设定下拉列表样式
		$('#selHandlerEmp').attr('data-live-search','true');
		$('select').selectpicker({width:'130px', noneSelectedText:'请选择...'});
		
		
		// 表格样式
		$('table').addClass('table table-striped table-hover');
		
		// 设定表格语种
		$('table').bootstrapTable({locale:'zh-CN'});

	};
	
	// 通过上一级数据初始化类别下拉列表
	var initCategoryByParentId = function(selId, pid, withAll, value) {
		if(pid != undefined && pid != '') {
			initSelect(selId, '/logic/baseInfo/category/list/' + pid, withAll, value);
		}
	};
	
	// 初始化包装类别下拉列表
	var initFinanceType = function(selId, withAll, value) {
		initSelect(selId, '/logic/baseInfo/sysDict/financeType', withAll, value);
		
	};
	
	// 初始化员工下拉列表
	var initEmployee =function() {
		$.post(baseUrl + '/logic/baseInfo/employee/list', {}, function(result) {
			$('#selHandlerEmp').empty();
			var dept = '';
			$.each(result, function(index, emp) {
				if(dept != emp.dept) {
					group = $('<optgroup />');
					group.attr('label', emp.dept);
					dept = emp.dept;
					$('#selHandlerEmp').append(group);
				}
				option = new Option();
				option.text = emp.empno + ' ' + emp.namecn;
				option.value = emp.id;
				
				group.append(option);
			});
			
			$('#selHandlerEmp').selectpicker('refresh');
			$('#selHandlerEmp').selectpicker('render');
		});
	};
	
	// 下拉列表初始化共通方法
	var initSelect = function(selId, url, withAll, value) {
		if(url != undefined) {
			$.post(baseUrl + url, {}, function(result) {
				$(selId).empty();
				if(withAll) {
					option = new Option('全部','-1');
					$(selId).append(option);
				}
				$.each(result, function(index, item) {
					option = new Option();
					option.text = item.namecn || item.display || item.text;
					option.value = item.id;
					$(selId).append(option);
				});
				
				$(selId).selectpicker('refresh');
				$(selId).selectpicker('render');
				
				if(value!=null && value != '' && value!=undefined)
					$(selId).selectpicker('val', value);
			});
		}
	};
	
	// 初始化下拉列表数据
	var initData = function() {
		initCategoryByParentId('#selCategory1', '4', true);
		$('#selCategory1').val(-1);
		
		initCategoryByParentId('#selCategoryEdit1', '4', false);
		
		initFinanceType('#selFinanceType', true);
		initFinanceType('#selFinanceTypeEdit', false);
		
		initEmployee();
	};
	
	// 对外开放接口列表
	return {
		initPageStyle : initPageStyle,
		initData : initData,
		initCategoryByParentId : initCategoryByParentId
	};
});