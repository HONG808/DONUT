<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../../common/header.jsp" %>

<div class="mypage-wrap">
   <div class="mypage-container">
        <div class="mypage-sidebar">
                <div class="mypage-sidebar-title">
                    <span><b>마이페이지</b></span>
                    <span style="font-size:18px;font-weight: 600;">mypage</span>
                </div>
                <ul>
                    <li class="sidebar-1"><a href="${pageContext.request.contextPath}/company/companyMypage">회원정보수정</a></li>
                    <li class="select sidebar-2"><a href="${pageContext.request.contextPath}/company/companyProject">내 프로젝트</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">내 프로젝트</span>
           </p>
            <div class="project-list-wrap">
            <div class="project-list">
                <div class="project-list-items">
                    <div class="project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg"></div>
                    <div class="project-name"><span>원빈 도와주세요!</span></div>
                    <div class="progress-wrap"><progress id="progressbar" value="35" max="100"></progress></div>
                    <div class="progress-value-wrap"><span class="progress-value">35%</span></div>
                    <div class="project-collection"><span>1,300,000원</span></div>
                </div>
                
                <div class="project-list-items">
                    <div class="project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test2.jpg"></div>
                    <div class="project-name"><span>이해인 함께해요♡</span></div>
                    <div class="progress-wrap"><progress id="progressbar" value="35" max="100"></progress></div>
                    <div class="progress-value-wrap"><span class="progress-value">35%</span></div>
                    <div class="project-collection"><span>1,300,000원</span></div>
                </div>
            </div>       
        </div>
        </div>
   </div>
</div>
<script>


</script>

<%@ include file="../../common/footer.jsp" %>