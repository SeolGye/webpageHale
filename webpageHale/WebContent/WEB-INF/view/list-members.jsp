<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.seol.springdemo.util.SortUtils" %>


<!DOCTYPE html>
<html>
<head>
<title>List Customer</title>

<link type="text/css"
rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/style.css " />

</head>
<body>

	<div id = "wrapper">
		<div id="header">
			<h2> CRM - Customer Relationship</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
		<input type="button" value = "Add Member" 
		onclick="window.location.href='showFormForAdd';return false;"
		class = "add-button"
		/>
				
		<form:form action="search" method="GET">
			Search member : <input type="text" name="theSearchName"/>
			<input type="submit" value="Search" class="add-button"/>
		</form:form>
		
		<table>
			<c:url var="sortLinkMemId" value="/member/list">
				<c:param name="sort" value="<%= Integer.toString(SortUtils.MEM_ID) %>" />
			</c:url>
			<c:url var="sortLinkUserName" value="/member/list">
				<c:param name="sort" value="<%= Integer.toString(SortUtils.MEM_USERNAME) %>" />
			</c:url>
			<c:url var="sortLinkNickName" value="/member/list">
				<c:param name="sort" value="<%= Integer.toString(SortUtils.MEM_NICKNAME) %>" />
			</c:url>
			<c:url var="sortLinkEmail" value="/member/list">
				<c:param name="sort" value="<%= Integer.toString(SortUtils.MEM_EMAIL) %>" /> 
			</c:url>
			
			<tr>
				<th><a href="${sortLinkFirstName}">user id</a></th>
				<th><a href="${sortLinkUserName}">user name</a></th>
				<th><a href="${sortLinkNickName}">user nickname</a></th>
				<th><a href="${sortLinkEmail}">user email</a></th>
				<th>action</th>
			</tr>
			
			<c:forEach var ="tempMember" items="${members}">
			
				<c:url var="updateLink" value="/member/showFormForUpdate">
					<c:param name="memberId" value ="${tempMember.mem_id }" />
				</c:url>
				
				<c:url var="deleteLink" value="/member/delete">
					<c:param name="memberId" value ="${tempMember.mem_id }" />
				</c:url>
				
				<tr>
					<td> ${tempMember.mem_id}</td>
					<td> ${tempMember.mem_username }</td>
					<td> ${tempMember.mem_nickname }</td>
					<td> ${tempMember.mem_email }</td>
					<td> <a href="${updateLink}"> Update </a> 
						|
						<a href="${deleteLink}"
						onclick = "if(!(confirm('Are you sure you wanna delete this member?'))) return false">Delete </a>
					</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
</body>
</html>

