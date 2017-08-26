<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#span {
		text-align: right;
		float: right;
	}
	a {
		text-decoration: none;
	}
</style>
</head>
<body>
	<div>
		<span id="span"><a href="${pageContext.request.contextPath}/user/addUser.action">新增</a></span>
	</div>
	<table border="1" width="100%">
		<caption>用户表</caption>
		<tr>
			<td>姓名</td>
			<td>年龄</td>
			<td>性别</td>
			<td>薪资</td>
			<td>部门</td>
			<td>更改</td>
		</tr>
	<c:forEach items="${users}" var="user">
		<tr>
			<td>${user.username }</td>
			<td>${user.age }</td>
			<td>${user.sex }</td>
			<td>${user.salary }</td>
			<td>${user.department }</td>
			<td><a href="${pageContext.request.contextPath }/user/updateUser.action?id=${user.id}">更改</a></td>
		</tr>
	</c:forEach>
	</table>
</body>

</html>