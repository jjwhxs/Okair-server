/**
 * 
 */

define(['jquery', 'moment', 'bootstrap'], function($, moment, bootstrap){
	
	moment.locale("zh-cn");
	
	$(document).ready(function() {

		$('#btnLogin').click(function () {
            $.post(
            	baseUrl + '/logic/baseInfo/sysUser/login',
				{
					uid: $('#tbxUid').val(),
					pwd: $('#tbxPwd').val()
				},
				function (result) {
					if(!result.error) {
						window.location.href=baseUrl + result.msg;
					} else {
						$('#loginAlert').show();
						$('#loginAlert').addClass('alert alert-danger');
					}
                }
			)
        });
	})
});