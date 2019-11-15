/**
 * 
 */

define(['jquery', 'moment' ,'bootstrapTable', 'bootstrapTreeview'], function($, moment, table, treeview){
	
	moment.locale("zh-cn");
	
	var currentTime = function() {
		$("#spanCurrentTime").html(moment().format("YYYY-MMMM-DD dddd HH:mm:ss"));
	};
	
	var currentUser = function() {
		$.post('logic/baseInfo/sysUser/currentUser',{},function(user){
			$('#spanUserName').html(user.nickname);
		});
	};
	
	var mainPage = function(){ 
		
	};
	
	$(document).ready(function() {
		
		setInterval(currentTime, 1000);
		var breadcrumb = $("#breadcrumb").html();
		$.getJSON("js/logic/model/menuList.json",function(data) {
			$("#tree").treeview({
				data: data,
				selectedIcon: "glyphicon glyphicon-menu-right",
				selectedBackColor: '#FF7F24',
				expandIcon:'glyphicon glyphicon-plus',
				onNodeSelected:function(event, data) {
					var parent = $("#tree").treeview("getNode", data.parentId);
					
					$('#breadcrumb li:gt(0)').remove();
					$("#breadcrumb").append($('<li>').html(parent.text))
									.append($('<li>').html(data.text));
					
					$("#contentFrame").attr("src", data.href);
				}
			});
		});
		
		$('#mainPageLink').click(function(evt){
			$('#breadcrumb li:gt(0)').remove();
		});
		
		currentUser();
		
	})
});