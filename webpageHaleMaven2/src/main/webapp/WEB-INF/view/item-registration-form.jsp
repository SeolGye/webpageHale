<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html>
<head>
<title>안녕~</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--  <meta name="viewport" contnent="width=device-width, initial-scale=1.0">
 --> 
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    
<!-- 부트스트랩-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		
	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" cotent="Ogani, unica, creative, html">
    <meta name="viewport" contnent="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/main.82cfd66e.css" type="text/css">
    <link rel="stylesheet" href="${path}/resources/css/theme.css" type="text/css">
	
	
	<script>
	var oTbl;
	//Row 추가
	function insRow() {
	  oTbl = document.getElementById("addTable");
	  var oRow = oTbl.insertRow();
	  oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	  var oCell = oRow.insertCell();

	  //삽입될 Form Tag
	  var frmTag = "<input type=text name=addText[]>" + " " +"<input type = text name =addPrice[]>";
	  frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'>";
	  oCell.innerHTML = frmTag;
	}
	//Row 삭제
	function removeRow() {
	  oTbl.deleteRow(oTbl.clickedRowIndex);
	}


</script>
	
</head>
<body>
<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				상품 등록
			</h1>
		</div>
	</div>
	
	<form:form action="${pageContext.request.contextPath}/shop/addItemProcessing" 
						  	   modelAttribute="item"
						  	   class="form-horizontal">
	
	<h3>상품 제목 </h3>
	<form:input path="mit_name" placeholder="이름"/>
	<h3>요약</h3>	   
	<form:input path="mit_summary" placeholder="요약"/>
	<h3>상세 설명</h3>
	<form:input path="mit_content" placeholder="상세 설명"/>
	<h3>가격</h3>
	<form:input path="mit_price" placeholder="가격"/>

	<h3>옵션</h3>

<form name="itemOption" method="post">
<table >
  <tr>
    <td >
      <table >
        <tr>
         <td>
         <input name="addButton" type="button" onClick="insRow()" value="추가">
         </td>
        </tr>
        <tr>
         <td>
          <table id="addTable">
            <tr>
              <td><input type="text" name="addText[]"> <input type = "text" name ="addPrice[]"></td>
              <td></td>
            </tr>
          </table>
         </td>
        </tr>
       </table>
      </td>
   </tr>
 </table>
 
 
 <table>
    <tr>
    <td>
    </td>
    </tr>
    <tr>
    <td>



    
    </td>
   </tr>
 </table>
	
	<input type="submit"class="btn btn-success"  value="정보변경하기"/>			
	<button type="submit" class="btn btn-primary" onClick="location.href='${pageContext.request.contextPath}/'">가입취소</button>
	
	<input type="hidden"
							   name="${_csrf.parameterName}"
							   value="${_csrf.token}" />
	
</form>					  	   
</form:form>


	



</body>
</html>
