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
	
</head>

<body>
  <!-- Page Preloder 카테고리  -->

    <!-- <div id="preloder">
        <div class="loader"></div>
    </div>  -->
        <nav class="humberger__menu__nav mobile-menu">
        
        
                <div class="row" style=" height: 730px;">
                    <div style="width: 240px;padding:0px;height:700px;margin-left:80px;">

<!-- 로고 <div class="Logo" style="margin-top: 300;"><img src="img/banner/logo.jpg" alt="logo"></div> -->


<!--카테고리-->
                        <div class="hero__categories">
                                <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>All departments</span>
                                </div> 
                
                                <ul class="main" style="padding:0px;text-align: center">
                                    <li><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">HOME</a></li>
                                    <li><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">NEW</a></li>
                                    <li ><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">TOP</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Knit</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Tee</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Shirts</a></li>
                                    <li><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">BOTTOM</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Denim</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Pants</a></li>
                                    <li><a href="#" style="color: rgb(192, 183, 171);">Half</a></li>
                                    <li><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">OUTER</a></li>
                                    <li><a href="#" style="color:rgb(85, 82, 82);font-size:20px;font-weight: 800">SHOES</a></li>
                                </ul>
                        </div>
                    </div>
               <!-- 윗부분 -->
                  
                    

    <!-- 상단바 -->
                <div class="col-lg-9" >
                    <main class="main" id="top"style="margin:0px;">
                        <nav class="navbar navbar-expand-lg navbar-light py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll" style="margin:0px;">
                            <div class="container">
                                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                                <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
                                    <ul class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href="#destinations"><span class="nav-link-icon text-800 fas fa-map-marker-alt"></span><span class="nav-link-text">NOTICE </span></a></li>
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href="#destinations"><span class="nav-link-icon text-800 fas fa-map-marker-alt"></span><span class="nav-link-text">Q & A </span></a></li>
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href="#destinations"><span class="nav-link-icon text-800 fas fa-map-marker-alt"></span><span class="nav-link-text">CART </span></a></li>
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href="${pageContext.request.contextPath}/member/"><span class="nav-link-icon text-800 fas fa-map-marker-alt"></span><span class="nav-link-text">MY PAGE </span></a></li>
                                        <security:authorize access="isAuthenticated()">
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href="${pageContext.request.contextPath}/admin/"><span class="nav-link-icon text-800 fas fa-map-marker-alt"></span><span class="nav-link-text">ADMIN </span></a></li>
                                        </security:authorize>
                                        <li class="nav-item px-6"><a class="nav-link fw-medium active" aria-current="page" href=""><i class="fa fa-heart"></i></a></li>
                                        
	
                                    </ul>
                                
                                   
							
                                   	
                                    
                               		 <security:authorize access="isAnonymous()">
                               		 
										<button class="nav-item px-4 btn text-900 order-1 order-lg-0 me-2" style="font-size:20px" type="submit" onClick="location.href='${pageContext.request.contextPath}/login'" > 
                                         <span class="login">
                                         	LOGIN
                                         </span>
										</button>
									</security:authorize>
                                   	
                                   	
									<security:authorize access="isAuthenticated()">
										<form:form action="${pageContext.request.contextPath}/logout" method="POST">\
										<span class="login">
										<input class="btn text-800 order-1 order-lg-0 me-2"style="font-size:20px" type="submit"class="btn btn-danger"  value="LOGOUT"/>
                                         </span>
										</form:form>
									</security:authorize>
	
									<%-- <security:authorize access="isAuthenticated()">
										<form:form action="${pageContext.request.contextPath}/logout" method="POST">
                                        	<input class="btn text-800 order-1 order-lg-0 me-2"style="font-size:20px" type="button" value = "LOGOUT"/>
                                        </form:form>
                       				</security:authorize> --%>
                        			
                        			
                        			
                                        <button class="btn btn-voyage-outline order-0" type="submit" style="font-size:20px" onClick="location.href='${pageContext.request.contextPath}/register/showRegistrationForm'">
                                        <span class="text-primary">
                                        Sign up</span>
                                        </button>
                                        
                                
                                </div>
                            </div>
                        </nav>
                       


<!-- 검색기능 -->  
<div class="searchbox">
    <div class="header">
      <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search" >
      <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
        <i class="fa fa-fw fa-search text-dark mr-2"></i></a>
    </div>
</div>


<!-- BEST 아이템   -->

							<div class="section-title" style="margin-top:70px" >
                                <h2 style="font-size:40px">Daily Best</h2>
                            </div>

                            <div class="featured__controls">
                            
                             <!-- <section class="categories">  -->
                                <div class="container";>
                                    <div class="row">
                                        <div class="categories__slider owl-carousel">



                                            <div class="col-lg-12">
                                                <div class="categories__item set-bg" data-setbg="img/best_item/B화이트와이드진.jpg">
                                                    <!-- <h5><a href="#">Fresh Fruit</a></h5> -->
                                                    <div class="featured__item__text">
                                                        <h6 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;"><b href="#">화이트 와이드 진</b></h6>
                                                        <!-- style="background-color: aliceblue; color: black; font-size: 15px; width: 80px;text-align: center;" -->
                                                        <h5 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;">25,000원</h5>
                                                        <!-- <h5 style="background-color: rgba(255, 255, 255, 0.8); -->
                                                    </div>
                                                </div>
                                            </div>




                                            <div class="col-lg-12">
                                                <div class="categories__item set-bg" data-setbg="img/best_item/B마가렛오버자켓.jpg">
                                                    <!-- <h5><a href="#">Dried Fruit</a></h5> -->
                                                    <div class="featured__item__text">
                                                        <h6 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;"><b href="#">마가렛 오버 자켓</b></h6>
                                                        <h5 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;">33,000원</h5>
                                                    </div>
                                                </div>
                                            </div>




                                            <div class="col-lg-12">
                                                <div class="categories__item set-bg" data-setbg="img/best_item/B스트라이프T.jpg">
                                                    <!-- <h5><a href="#">Vegetables</a></h5> -->
                                                    <div class="featured__item__text">
                                                        <h6 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;"><b href="#">Simple 스트라이프T</b></h6>
                                                        <h5 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;">39,900원</h5>
                                                    </div>
                                                 </div>
                                            </div>



                                            <div class="col-lg-12">
                                                <div class="categories__item set-bg" data-setbg="img/best_item/B후크와이드청바지.jpg">
                                                    <!-- <h5><a href="#">drink fruits</a></h5> -->
                                                    <div class="featured__item__text">
                                                        <h6 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;"><b href="#">후크 와이드 청바지</b></h6>
                                                        <h5 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;">59,000원</h5>
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="col-lg-12">
                                                <div class="categories__item set-bg" data-setbg="img/best_item/B레귤러캣브리쉬.jpg">
                                                    <!-- <h5><a href="#">drink fruits</a></h5> -->
                                                    <div class="featured__item__text">
                                                        <h6 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;"><b href="#">레귤러 캣브리쉬 데님</b></h6>
                                                        <h5 style="background-color: rgba(255, 255, 255, 0.7);font-weight: 700;">27,900원</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </main>
                    
                    </div>
                </div> 
        </nav>  
           



<%-- <security:authorize access="isAnonymous()">
손님 
</security:authorize> --%>
<!-- 비회원이 들어왔을 때 표시하는 이름 -->



<security:authorize access="isAuthenticated()">
<security:authentication property="principal.username"/> 
</security:authorize>
	
		
	

</body>

</html>