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
                    <li class="select sidebar-1"><a href="${pageContext.request.contextPath}/company/companyMypage">회원정보수정</a></li>
                    <li class="sidebar-2"><a href="${pageContext.request.contextPath}/company/companyProject">내 프로젝트</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">회원정보수정</span>
           </p>
            <div class="mypage-1-content">
                <div class="inform-container">
                    <div class="inform-items">
                        <div class="inform-label"><span>아이디</span></div>
                        <div class="inform-input">kdh8909</div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>비밀번호</span></div>
                        <div class="inform-input">
                            <input type="password" placeholder="현재 비밀번호">
                            <input type="button" class="btn_2" value="변경하기" style="width:70px;">
                        </div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>이름</span></div>
                        <div class="inform-input">권도훈</div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>휴대폰</span></div>
                        <div class="inform-input">010-1234-1234</div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>성별</span></div>
                        <div class="inform-input">남</div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>이메일</span></div>
                        <div class="inform-input">huniya89090@naver.com
                        <input type="button" class="btn_2" value="변경하기" style="width:70px;">
                        </div>
                    </div>
                    <div class="inform-items">
                        <div class="inform-label"><span>사진</span></div>
                        <div class="inform-input"><input type="button" class="btn_2" value="변경하기" style="width:70px;"></div>
                    </div>
                    
                    <!-- 저장 버튼 -->
                    <div class="inform-save" style="margin-top:20px;display:flex;justify-content: center;">
                        <input type="button" class="btn_2" value="저장" style="width:100px;">
                    </div>
                    <!-------------->
                </div>
                
            </div>
        </div>
   </div>
</div>
<script>

</script>

<%@ include file="../../common/footer.jsp" %>