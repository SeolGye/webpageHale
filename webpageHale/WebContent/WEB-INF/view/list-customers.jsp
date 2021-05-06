<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>List Customer</title>
</head>
<body>

	<div id = "wrapper">
		<div id="header">
			<h2> CRM - Customer Relationship</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
		<table>
			<tr>
				<th>user id</th>
				<th>user name</th>
				<th>user nickname</th>
				<th>user email</th>
			</tr>
			
			
			<c:forEach var ="tempMember" items="${members}">
				<tr>
					<td> ${tempMember.mem_id}</td>
					<td> ${tempMember.mem_username }</td>
					<td> ${tempMember.mem_nickname }</td>
					<td> ${tempMember.mem_email }</td>
				</tr>
			
			
			</c:forEach>"
		</table>
		</div>
	</div>
</body>
</html>

