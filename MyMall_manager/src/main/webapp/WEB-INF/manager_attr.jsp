<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(function () {
	$.getJSON("js/json/class_1.js",function(data){
		
		$(data).each(function(i,json){
			$("#attr_select_class_1").append("<option value='"+json.id+"'>"+json.flmch1+"</option>");	
		});
	});
});

function attr_select_class_2_by_class1(class_1_id) {
	
	 $.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
		$("#attr_select_class_2").empty();
		$(data).each(function(i,json){
			$("#attr_select_class_2").append("<option value='"+json.id+"'>"+json.flmch2+"</option>");	
		});
	});
	 
	attr_select_tm_by_calss1(class_1_id); 
}

function attr_select_tm_by_calss1(class_1_id) {
	 $.getJSON("js/json/tm_class_1_"+class_1_id+".js",function(data){
			$("#attr_select_tm").empty();
			$(data).each(function(i,json){
				$("#attr_select_tm").append("<option value='"+json.id+"'>"+json.ppmch+"</option>");	
			});
		}); 
}

function get_attr_by_class_2(class_2_id) {
	var class_2_name = $("#attr_select_class_2 option:selected").html();
	
	$.post("get_attr_by_class_2.do",{class_2_id:class_2_id,class_2_name:class_2_name},function(html){
		$("#manager_attr_list_inner").html(html);
	})
}
</script>
<title>硅谷商城</title>
</head>
<body>
	商品属性维护<br>
	<select	name="flbh1" id="attr_select_class_1" onchange="attr_select_class_2_by_class1(this.value)"></select>
	
	<select name="flbh1=2"	id="attr_select_class_2" onclick="get_attr_by_class_2(this.value)">
	<option>请选择</option>
	</select>
	<div id="manager_attr_list_inner"></div>
</body>
</html>