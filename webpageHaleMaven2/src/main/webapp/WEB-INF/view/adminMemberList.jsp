<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<title>관리자 모드</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 부트스트랩-->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h2>관리자페이지</h2>
<h3>회원리스트</h3>
<table class="table table-striped">
<thead>
<tr>
<th>ID</th>
<th>아이디</th>
<th>별명</th>
<th>이메일</th>
<th>생일</th>
<th>비고</th>
</tr>
</thead>

<c:forEach var = "tempMember" items="${members}" >
<!-- 유저별 업데이트 링크 -->
<!-- 파라미터에 멤버 아이디를 넣어서 전달 -->
<c:url var ="updateLink" value="/member/editMember">
</c:url>

<!-- 유저별 삭제 링크 -->
<c:url var ="deleteLink" value="${pageContext.request.contextPath}/member/deleteMember">
</c:url>

<tr>
<td>${tempMember.mem_id}</td>
<td>${tempMember.mem_username}</td>
<td>${tempMember.mem_nickname}</td>
<td>${tempMember.mem_email}</td>
<td>${tempMember.mem_birthday}</td>
<!-- 업데이트 버튼 -->
<td>
<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" >
  수정
</button>



<!-- 삭제 버튼 -->
<button type="submit" class="btn btn-danger" onClick="location.href='${deleteLink}'">삭제</button>
</td>
</tr>


<!-- 회원 정보 수정 창 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal 제목</h4>
      </div>
      
<!--  바꾸는 부분 -->
      <div class="modal-body">
       <form:form action="${pageContext.request.contextPath}/member/saveMember" 
						modelAttribute="EditMember"  class="">
						
         <table class="table table-striped" >
            <tr>
              <th>등록할 회원 ID </th>
              <td> ${tempMember.mem_username}</td>
              <form:input type= "hidden" path="mem_username" value= "${tempMember.mem_username }"/>
            </tr>
 
            <tr>
              <th>이름 </th>
              <td>
              <form:errors path="mem_nickname" cssClass="error"/>
              <form:input class="form-control" path="mem_nickname"  value = "${tempMember.mem_nickname}"/>
              </td>
            </tr>
 
            <tr>
              <th>Email</th>
			<td>
			<form:errors path="mem_email" cssClass="error"/>
			<form:input class="form-control" path="mem_email" value = "${tempMember.mem_nickname}"/>
			</td>
            </tr>

            <tr>
              <th>연락처 </th>
              <td>
              <form:errors path="mem_phone" cssClass="error"/>
              <form:input class="form-control" path="mem_phone" value = "${tempMember.mem_phone}"/>
              </td>
            </tr> 
 
            <tr>
              <th>주소 </th>
			<td>
			<form:errors path="mem_address1" cssClass="error"/>
			<form:input class="form-control" path="mem_address1" value = "${tempMember.mem_address1}"/>
			</td>
            </tr>
            
			<tr>
              <th>주소2 </th>
			<td>
			<form:errors path="mem_address2" cssClass="error"/>
			<form:input class="form-control" path="mem_address2" value = "${tempMember.mem_address2}"/>
			</td>
            </tr>
            <tr>
            
              <th>주소3 </th>
			<td>
			<form:errors path="mem_address3" cssClass="error"/>
			<form:input class="form-control" path="mem_address3" value = "${tempMember.mem_address3}"/>
			</td>
            </tr>
            <tr>
            
              <th>주소4 </th>
			<td>
			<form:errors path="mem_address4" cssClass="error"/>
			<form:input class="form-control" path="mem_address4"  value = "${tempMember.mem_address4}"/>
			</td>
            </tr>

            <tr>
              <th>우편번호</th>
			<td>
			<form:errors path="mem_zipcode" cssClass="error"/>
			<form:input class="form-control" path="mem_zipcode" value = "${tempMember.mem_zipcode}"/>
			</td>
            </tr>
 
            <tr>
              <th>성별 </th>
              <td>
              <form:errors path="mem_sex" cssClass="error"/>
              <form:select calss="form-control" path="mem_sex" value = "${tempMember.mem_sex}"> 
              	<form:option value="0" label="남자" />
              	<form:option value="1" label="여자"/> 
              </form:select>
              </td>
            </tr>
            
             <tr>
              <th>이메일 수신 </th>
              <td>
    			<form:radiobutton path="mem_receive_email" value="1" label="수신" />
    			<form:radiobutton path="mem_receive_email" value="0" label="비수신" />
    			<form:errors path="mem_receive_email" cssClass="error"/>
    			
              </td>
            </tr>
            <tr>
              <th>문자 수신 </th>
              <td>
				<form:radiobutton path="mem_receive_sms" value="1" label="수신" />
    			<form:radiobutton path="mem_receive_sms" value="0" label="비수신" />
				<form:errors path="mem_receive_sms" cssClass="error"/>              
              </td>
            </tr>
            
            
            <tr>
            	<th>생일</th>
            	<td>
            	<script>
								$(function() {
									$("#datepicker1").datepicker({
										changeMonth: true,
										chagneYear: true,
										dateFormat : 'yy-mm-dd'
									});
								});
				</script>
				<form:errors path="mem_birthday" cssClass="error"/>
            	<form:input path="mem_birthday" type="text" id="datepicker1" class="form-control" value = "${tempMember.mem_birthday}" />
            	</td>
            </tr>
 
            <tr class="text-center">
              <td colspan="2">
                <input type="hidden" name="id1" value="" >
                <input type="submit"class="btn btn-success"  value="정보변경하기"/>
              </td>
            </tr>
         </table>
         
    </form:form>
       
        
        
        
      
      </div>
      <div class="modal-footer">
      	<button type="submit" class="btn btn-success" onClick="location.href='${updateLink}'">수정</button>

        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div></div>



</c:forEach>


</table>
<a href="${pageContext.request.contextPath}/">홈으로</a>


</body>
</html>