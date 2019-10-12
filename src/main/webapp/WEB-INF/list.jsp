<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 引入格式化标签库 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css" rel="stylesheet">
   
</head>
<body>


<form action="${pageContext.request.contextPath}/user/list" >
	<select name="space">
		<option value="ename" >姓名</option>
		<option value="job" >工作</option>
		<option value="sal" >工资</option>
		<option value="comm" >押金</option>
		<option value="deptno" >部门</option>
	</select>
		关键字<input type="text" name="keyword" value="${map.keyword }">
		<input type="submit" value="查询">
	</form> 
<div class="col-md-8" style="margin-left: 200px;margin-top: 100px;font-size: 20px">
	添加用户<a href="${pageContext.request.contextPath}/user/add" class="glyphicon glyphicon-plus"></a>
	<table class="table table-bordered">  
 		<tr>
 			<td>empno</td>
 			<td>ename</td>
 			<td>job</td>
 			<td>mgr</td>
 			<td>hiredate</td>
 			<td>sal</td>
 			<td>comm</td>
 			<td>deptno</td>
 			<td>操作</td>
 		</tr>
 		<c:forEach items="${list}" var="u">
 			<tr>
 				<td>${u.empno }</td>
 				<td>${u.ename }</td>
 				<td>${u.job }</td>
 				<td>${u.mgr }</td>
 				<td>
 					<fmt:formatDate value="${u.hiredate }" pattern="yyyy-MM-dd"></fmt:formatDate>
 				</td>	
 				<td>${u.sal }</td>
 				<td>${u.comm }</td>
 				<td>${u.deptno }</td>
 				<td>
 					<a class="glyphicon glyphicon-trash" href="${pageContext.request.contextPath}/user/delete?empno=${u.empno }"></a>|
 					<a class="glyphicon glyphicon-pencil" href="${pageContext.request.contextPath}/user/edit?empno=${u.empno }"></a>
 				</td>
 			</tr>
 		</c:forEach>
	</table>
</div>
		 <nav aria-label="Page navigation">
		  <ul class="pagination">
		   <c:choose>
		   <c:when test="${page.pageNum == 1}">
		   <li>
		      	<a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		   
		   </c:when>
		   <c:otherwise>
		    <li>
		      <a href="${pageContext.request.contextPath}/user/list?pageNo=${page.pageNum - 1}&keyword=${map.keyword}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    </c:otherwise>
		   </c:choose>
		    <c:forEach var="i" begin="1" end="${page.pages }">
		    <li><a href="${pageContext.request.contextPath}/user/list?pageNo=${i}&keyword=${map.keyword}">${i}</a></li>
		    </c:forEach>
		    
		    <c:choose>
		   <c:when test="${page.pageNum == page.pages }">
		   <li>
		      	<a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		   </c:when>
		   <c:otherwise>
		    <li>
		      <a href="${pageContext.request.contextPath}/user/list?pageNo=${page.pageNum + 1}&keyword=${map.keyword}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		     </c:otherwise>
		   </c:choose> 
		  </ul>
		</nav>
</body>
</html>