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
	function login(){
	
			$.ajax({
				url:"OneBigFace/login.do",
				type:"POST",
				data:{username:"${username}",password:"${password}"},
				dataType:"json",
				success:function(result){
					if(result.success){
						window.location.href = "OneBigFace/loginSuccess.jsp";
					}else{
						alert("重新操作");
					}
					
				},
				error:function(){
					alert("失败");
				}
		
		});
			
		
	}
		
</script>
<title>Big</title>
</head>
<body>
	<h1>欢迎来到OneBigFace</h1>
	<form  action="login.do" method="post" >
		请输入用户名:<input type="text" name="username" ><br>
		请输入密码:<input type="password" name="password"><br>
		<button id="01">登录</button>
	</form>
</body>
</html>