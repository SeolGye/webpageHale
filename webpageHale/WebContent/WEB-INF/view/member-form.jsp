<%@ taglib prefix="form" uri ="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<title> Save member </title>
	<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-member-style.css">
	
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2> Member Relationship Manager </h2>
		</div>
	</div>
	
	<div id="container">
		<h3> Save Member </h3>
		<form:form action="saveMember" modelAttribute="member" method="POST">
		
		<form:hidden path="mem_id"/>
		
		<table>
			<tbody>
				<tr>
					<td><label>user name :  </label></td>
					<td><form:input path="mem_username"/></td>
				</tr>
				<tr>
					<td><label>nick name :  </label></td>
					<td><form:input path="mem_nickname"/></td>
				</tr>
				<tr>
					<td><label>email :  </label></td>
					<td><form:input path="mem_email"/></td>
				</tr>
				<tr>
					<td><label></label></td>
					<td><input type="submit" value ="Save" class="save" /></td>
				</tr>
			</tbody>
		</table>
		</form:form>
		<div style="clear; both;"></div>
		<p>
			<a href="${pageContext.request.contextPath}/member/list"> back to the list </a>
		</p>
	</div>
</body>
</html>

