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
	分类属性列表内嵌页<br>
	<c:forEach items="${list_attr}" var="attr">
		<c:forEach items="${attr.list_value }" var="val">
			${val.shxzh }${val.shxzh_mch}
		</c:forEach><br>
	</c:forEach>
	<a href="goto_add_attr.do?class_2_id=${class_2_id }&class_2_name=${class_2_name}">添加${class_2_name }</a>

</body>
</html>