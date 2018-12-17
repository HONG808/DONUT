<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="signup-wrap">
    <div class="signup-container">
        <div class="signup-title">
            
            <ul>
                <li><a id="signup_person" href="#">개인회원가입</a></li>
                <li><a id="signup_company" href="#">단체회원가입</a></li>
            </ul>
            
        </div>
        <div class="signup-contents">
            <div class="signup-person">
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>아이디</span></div>
                        <div class="signup-input"><input type="text" placeholder="아이디"> <input type="button" class="btn_2" value="중복확인" style="width:70px;"></div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>비밀번호</span></div>
                        <div class="signup-input">
                            <input type="password" placeholder="비밀번호">
                        </div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>이름</span></div>
                        <div class="signup-input"><input type="text" placeholder="이름"></div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>휴대폰</span></div>
                        <div class="signup-input"><input type="text" size="4"> - <input type="text" size="4"> - <input type="text" size="4"></div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>성별</span></div>
                        <div class="signup-input">
                        <input type="radio" id="male" name="male" value="male"><label for="male"><span>남</span></label>
                        <input type="radio" id="female" name="male" value="female"><label for="female"><span>여</span></label>
                        </div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span style="color:red;">*</span><span>이메일</span></div>
                        <div class="signup-input"><input type="text" placeholder="이메일">
                        <input type="button" class="btn_2" value="중복확인" style="width:70px;">
                        </div>
                    </div>
                    <div class="signup-items">
                        <div class="signup-label"><span>사진</span></div>
                        <div class="signup-input"><input type="button" class="btn_2" value="등록하기" style="width:70px;"></div>
                    </div>
                    
                    <!-- 저장 버튼 -->
                    <div class="signup-save" style="margin-top:20px;display:flex;justify-content: center;">
                        <input type="button" class="btn_2" value="가입" style="width:100px;">
                    </div>
                
            </div>
            
        </div>
    </div>
        
    
</div>
<script>
$(function(){
   $("#signup_person").click(function(){
       $(".page-move").load('signup_person.html');
   });
    $("#signup_company").click(function(){
        $(".signup-contents").load('signup_company.html');
        $(this).parent().css("background-color","#DC287C");
        $(this).parent().parent().find("li:first-child a").css("color","black");
        $(this).parent().parent().find("li:first-child").css("background-color","#F7F6F6");
        $(this).css("color", "white");
    });
});
</script>

<%@ include file="../common/footer.jsp" %>