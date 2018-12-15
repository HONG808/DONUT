<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="login-wrap clearfix">
	<div class="login-container">
		<div class="login-select" style="font-size: 25px;">
			<input type="radio" id="person" name="tab-menu" checked> <label
				for="person">개인</label> <input type="radio" id="company"
				name="tab-menu"> <label for="company">단체</label>
		</div>


		<div class="person-login" id="person-login">
			<p>로그인</p>
			<input type="text" id="personLoginId" placeholder="아이디"> <input
				type="password" id="personLoginPass" placeholder="비밀번호">
			<button class="btn">로그인</button>
			<div class="sns-login">
				<button class="btn sign">회원가입</button>
				<button class="btn kakao">카카오 로그인</button>
				<button class="btn google">구글 로그인</button>
			</div>
		</div>

		<div class="company-login hidden" id="company-login">
			<p>로그인</p>
			<input type="text" placeholder="아이디"> <input type="password"
				placeholder="비밀번호">
			<button class="btn">로그인</button>
			<div class="sns-login">
				<button class="btn sign">회원가입</button>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {

		$("#company").click(function() {
			$("input").val('');
			$(".person-login").addClass("hidden");
			$(".company-login").removeClass("hidden");
		})

		$("#person").click(function() {
			$("input").val('');
			$(".company-login").addClass("hidden");
			$(".person-login").removeClass("hidden");
		})
	})
</script>

<%@ include file="../common/footer.jsp" %>