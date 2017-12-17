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

</script>
<title>硅谷商城</title>
</head>
<body>
	<p>属性添加列表</p>
	<table border="1">
		<tr><td>属性名:<input type="text"></td><td></td><td>添加值</td></tr>
		<tr><td>属性值:<input type="text"></td><td>属性值名称:<input type="text"></td><td>添加值</td></tr>
		<tr><td>属性值:<input type="text"></td><td>属性值名称:<input type="text"></td><td>添加值</td></tr>
	</table><br>
	<table border="1">
		<tr><td>属性名:<input type="text"></td><td></td><td>添加值</td></tr>
		<tr><td>属性值:<input type="text"></td><td>属性值名称:<input type="text"></td><td>添加值</td></tr>
		<tr><td>属性值:<input type="text"></td><td>属性值名称:<input type="text"></td><td>添加值</td></tr>
	</table>
</body>
</html>