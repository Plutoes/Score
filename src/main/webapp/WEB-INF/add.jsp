<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>
<div class="col-md-3" style="margin-left: 200px;margin-top: 100px;font-size: 20px">
	<form action="${pageContext.request.contextPath}/user/add" method="post">
	<table class="table table-bordered">
		<tr>
			<td>empno</td>
			<td>
				<input type="text" name="empno" >
			</td>
		</tr>
		<tr>
			<td>ename</td>
			<td>
				<input type="text" name="ename" >
			</td>
		</tr>
		<tr>
			<td>job</td>
			<td>
				<input type="text" name="job" >
			</td>
		</tr>
		<tr>
			<td>mgr</td>
			<td>
				<input type="text" name="mgr" >
			</td>
		</tr>
		<tr>
			<td>sal</td>
			<td>
				<input type="text" name="sal" >
			</td>
		</tr>
		<tr>
			<td>comm</td>
			<td>
				<input type="text" name="comm" >
			</td>
		</tr>
		<tr>
			<td>deptno</td>
			<td>
				<input type="text" name="deptno" >
			</td>
		</tr>
		<tr>
			<td>hiredate</td>
			<td>
				 <div class="layui-inline">
     			 	<div class="layui-input-inline">
       				 	<input type="text" name="hiredate" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
      				</div>
   				</div>
			</td>
		</tr>
	</table>
	<span>${msg }</span>
	<input type="submit" value="添加">
	</form>
<script src="${pageContext.request.contextPath}/layui/layui.js" type="text/javascript"></script>
<script>
//一般直接写在一个js文件中
layui.use('laydate', function(){
  var laydate = layui.laydate;
//常规用法
  laydate.render({
    elem: '#test1'
  });
});
</script> 
</body>
</html>