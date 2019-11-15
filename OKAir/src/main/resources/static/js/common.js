
/*
 * 统一URL前缀，方便切换数据源位置
 */
var baseUrl = "http://127.0.0.1:8080";

/* 
 * 千分位表示法(共通函数)
 */
var toThousands = function (num) {
    return (num || 0).toString().replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
};

/*
 * 货币格式化
 */
var formatCurrency = function(currency) {
	return toThousands(currency.toFixed(2));
};

require.config({
	baseUrl: "js/bower_components",
	paths:{
		"jquery": "jquery/dist/jquery.min",
		"validation": "jquery-form-validator/jquery.form-validator",
		"bootstrap": "bootstrap/dist/js/bootstrap.min",
		"bootstrapTable": "bootstrap-table/dist/bootstrap-table.min",
		"bootstrapTableZhCN": "bootstrap-table/dist/locale/bootstrap-table-zh-CN",
		"bootstrapSelect": "bootstrap-select/dist/js/bootstrap-select.min",
		"bootstrapTreeview": "bootstrap-treeview/dist/bootstrap-treeview.min",
		"moment": "moment/min/moment-with-locales",
		"bootstrapSwitch":"bootstrap-switch/dist/js/bootstrap-switch.min",
		"logic": "../logic"
	},
	map:{
		'*':{
			'css':"require-css/css"
		}
	},
	shim:{
		validation: {
			deps:[
				'css!../bower_components/jquery-form-validator/form-validator/theme-default'
			]
		},
		bootstrap: {
			deps:[
				'jquery',
				'css!../bower_components/bootstrap/dist/css/bootstrap.min'
			]
		},
		bootstrapTable: {
			deps:[
				'bootstrap',
				'css!../bower_components/bootstrap-table/dist/bootstrap-table.min'
			]
		},
		bootstrapTableZhCN: {
			deps:[
				'jquery',
				'bootstrapTable'
			]
		},
		bootstrapSwitch:{
			deps:[
				'jquery',
				'css!../bower_components/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min'
			]
		},
		bootstrapSelect: {
			deps:[
				'jquery',
				'css!../bower_components/bootstrap-select/dist/css/bootstrap-select.min'
			]
		},
		bootstrapTreeview: {
			deps:[
				'jquery',
				'css!../bower_components/bootstrap-treeview/dist/bootstrap-treeview.min'
			]
		}
	}
});