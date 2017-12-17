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
				$("#spu_select_class_1").append("<option value='"+json.id+"'>"+json.flmch1+"</option>");	
			});
		});
	});
	
	function spu_select_class_2_by_class1(class_1_id) {
		
		 $.getJSON("js/json/class_2_"+class_1_id+".js",function(data){
			$("#spu_select_class_2").empty();
			$(data).each(function(i,json){
				$("#spu_select_class_2").append("<option value='"+json.id+"'>"+json.flmch2+"</option>");	
			});
		});
		 
		spu_select_tm_by_calss1(class_1_id); 
	}
	
	function spu_select_tm_by_calss1(class_1_id) {
		 $.getJSON("js/json/tm_class_1_"+class_1_id+".js",function(data){
				$("#spu_select_tm").empty();
				$(data).each(function(i,json){
					$("#spu_select_tm").append("<option value='"+json.id+"'>"+json.ppmch+"</option>");	
				});
			}); 
	}
	
	function spu_img_click(count) {
		$("#spu_file_"+count).click();
		
	}
	function spu_img_replace(count,num){
		//获得图片对象的缓存
		var b_img=$("#spu_file_"+count)[0].files[0];
		//用图片对象替换按钮
		$("#spu_img_"+count).attr("src",window.URL.createObjectURL(b_img));
		//用户必须选择最后一张
		var length=$("#spu_img_box input").length
		if(count == length){
			num--;
			$("#spu_num").text(num);
			if(num > 0){
				spu_img_add(count+1, num);
			}
		}
		
	}
	function spu_img_add(count,num) {
		$("#spu_img_box").append('<img onclick="spu_img_click('+count+')" id="spu_img_'+count+'" style="cursor:pointer;s" src="css/image/upload_hover.png" width="70">'	);
		$("#spu_img_box").append('<input onchange="spu_img_replace('+count+','+num+')" style="display:none;" id="spu_file_'+count+'" type="file" name="files">');
		
	}
	
		
</script>
<title>硅谷商城</title>
</head>
<body>
	商品发布管理首页  ${success}<br>
	<form action="save_spu.do" method="post" enctype="multipart/form-data">
	<select	name="flbh1" id="spu_select_class_1" onchange="spu_select_class_2_by_class1(this.value)"></select>
	
	<select name="flbh1=2"	id="spu_select_class_2" >
		<option>请选择</option>
	</select>
	<select name="pp_id" id="spu_select_tm" >
		<option>请选择</option>
	</select>
	<hr>
	商品名称<input type="text" name="shp_mch"><br>
	商品描述<textarea name="shp_msh" rows="10" cols="10"></textarea><br>
	商品图片<br>
	<div id="spu_img_box" >
		<p style="font-size: 14px;">还可以上传<span id="spu_num" style="color:red;">5</span>张图片</p>
		<img onclick="spu_img_click(1)" id="spu_img_1" style="cursor:pointer;s" src="css/image/upload_hover.png" width="70">
		<input style="display:none;"  onchange="spu_img_replace(1,5)" id="spu_file_1" type="file" name="files">
	</div>
		<input type="submit" value="发布商品信息">
	</form>
</body>
</html>