<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<!-- meta -->
	<meta charset="UTF-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1100">
	<title>Donut</title>
	<!-- script -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <!-- favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/odometer-theme-default.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/progress.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/SpoqaHanSans-kr.css"/>
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <!-- font -->
           
</head>
<body>
	<!-- 상단 공통 -->
        <div class="menu-wrap none">
            <div class="menu">
                   <ul>
                    <li><a class="notice_menu" href="${pageContext.request.contextPath}/notice/noticeList"><b>공지사항</b><span class="arr"></span></a></li>
                    <li><a class="project_menu" href="${pageContext.request.contextPath}/project/projectList"><b>프로젝트</b><span class="arr"></span></a></li>
                    <li><a href="#"><b>맞춤기부</b><span class="arr"></span></a></li>
                    <li><a class="project_register_menu" href="${pageContext.request.contextPath}/project/projectInsertForm"><b>프로젝트등록</b><span class="arr"></span></a></li>
                    <li><a href="#"><b>명예의전당</b><span class="arr"></span></a></li>
                </ul>
            </div>
        </div>
        
        <div class="nav-wrap">
            <div class="nav"> 
                <ul>
                	<c:choose>
                    	<c:when test="${not empty userDTO}">
                    		${userDTO.id}님 환영합니다.	
                    		<li><a class="mypage_nav" id="memberM" href="${pageContext.request.contextPath}/member/memberMypage">마이페이지</a></li> 
							<li><a class="mypage_nav" id="companyM" href="${pageContext.request.contextPath}/company/companyMypage">기업마이페이지</a></li>             	 	                    	
                    		<li><a class="login_nav" id="loginC" href="${pageContext.request.contextPath}/member/logOut">로그아웃</a></li>
						</c:when>        	
                    	<c:otherwise>
                    		<li><a class="signup_nav" id="joinC" href="${pageContext.request.contextPath}/member/signUp">회원가입</a></li>
                   			<li><a class="login_nav" id="loginC" href="${pageContext.request.contextPath}/member/login">로그인</a></li>
                    	</c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!-- 플로팅 메뉴 -->
            <div id="floatMenu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/">홈</a></li>
                	<c:choose>
                    	<c:when test="${not empty userDTO}">
                    	    <li><a class="login_nav" id="loginC" href="${pageContext.request.contextPath}/member/logOut">로그아웃</a></li>
                    		<li><a class="mypage_nav" id="memberM" href="${pageContext.request.contextPath}/member/memberMypage">마이페이지</a></li> 
							<li><a class="mypage_nav" id="companyM" href="${pageContext.request.contextPath}/company/companyMypage">기업마이페이지</a></li>             	 	                    	
						</c:when>        	
                    	<c:otherwise>
		                    <li><a class="login_nav" href="${pageContext.request.contextPath}/member/login">로그인</a></li>
		                    <li><a class="signup_nav" href="${pageContext.request.contextPath}/member/signUp">회원가입</a></li>
		                    <li><a class="mypage_nav" href="${pageContext.request.contextPath}/member/memberMypage">마이페이지</a></li>
                    	</c:otherwise>
                    </c:choose>
                    <li><a href="#">맨위로</a></li>
                </ul>
            </div>           
        </div>   
        <div align="center" class="logo">
            <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo/donut.png"></a>
        </div>

        <div class="menu-wrap">
            <div class="menu">
                   <ul>
                    <li><a class="notice_menu" href="${pageContext.request.contextPath}/notice/noticeList"><b>공지사항</b><span class="arr"></span></a></li>
                    <li><a class="project_menu" href="${pageContext.request.contextPath}/project/projectList"><b>프로젝트</b><span class="arr"></span></a></li>
                    <li><a href="#"><b>맞춤기부</b><span class="arr"></span></a></li>
                    <li><a class="project_register_menu" href="${pageContext.request.contextPath}/project/projectInsertForm"><b>프로젝트등록</b><span class="arr"></span></a></li>
                    <li><a href="#"><b>명예의전당</b><span class="arr"></span></a></li>             
                    </ul>
            </div>
        </div>