<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp"%>

<div class="signup-wrap">
	<div class="signup-container">
		<div class="signup-title">

			<ul>
				<li><a id="signup_person" href="${pageContext.request.contextPath}/member/signUp">개인회원가입</a></li>
				<li><a id="signup_company" href="${pageContext.request.contextPath}/company/companyInsertForm">단체회원가입</a></li>
			</ul>

		</div>

		<form name="insertInfo" method="post" action="${pageContext.request.contextPath}/member/write" enctype="multipart/form-data">
			<div class="signup-contents">
				<div class="signup-person">
					<div class="signup-items">
						<div class="signup-label">
							<span style="color: red;">*</span><span>아이디</span>
						</div>
						<div class="signup-input">
							<input type="text" id="id" name="id" placeholder="아이디"> 
							<input type="button" class="btn_2" name="btn_idCheck" id="btn_idCheck" value="중복확인" style="width: 70px;"> 
							<span id="idResult" name="idResult" style="display: block; color: red"></span>
						</div>
					</div>
					<div class="signup-items">
						<div class="signup-label">
							<span style="color: red;">*</span><span>비밀번호</span>
						</div>
						<div class="signup-input">
							<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
						</div>
					</div>
					<div class="signup-items">
						<div class="signup-label">
							<span style="color: red;">*</span><span>이름</span>
						</div>
						<div class="signup-input">
							<input type="text" id="name" name="name" placeholder="이름">
						</div>
					</div>
					<div class="signup-items">
						<div class="signup-label">
							<span style="color: red;">*</span><span>휴대폰</span>
						</div>
						<div class="signup-input">
							<input type="text" id="phone" name="phone" size="12">
							<!--  - <input type="text" size="4"> - <input type="text" size="4"> -->
						</div>
					</div>
					<!-- 핸드폰 한꺼번에 받기로 변경해둠-->
					<div class="signup-items">
						<div class="signup-label">
							<span style="color: red;">*</span><span>이메일</span>
						</div>
						<div class="signup-input">
							<input type="text" id="email" name="email" placeholder="이메일">
						</div>
					</div>
					<div class="signup-items">
						<div class="signup-label">
							<span>사진</span>
						</div>
						<div class="signup-input">
							<input type="file" name="file" maxlength="60" size="40" />
						</div>
					</div>

					<!-- 저장 버튼 -->
					<div class="signup-save"
						style="margin-top: 20px; display: flex; justify-content: center;">
						<input type="submit" class="btn_2" id="btn_submit" name="btn_submit" value="가입" style="width: 100px;"></input>
					</div>

				</div>

			</div>
		</form>
	</div>


</div>
<script>
	$(function() {
				
		$('#btn_submit').attr('hidden', true);

		$('#btn_idCheck').click(function() {
			if ($('#id').val() == '') {
				$('#idResult').text('id를 입력하세요');
			} else {
				$.ajax({
					url : "idCheck",
					type : "post",
					data : "id=" + $('#id').val(),
					dataType : "text",
					success : function(result) {
						console.log(result)
						if (result == "success") {
							result = "사용가능한 아이디입니다.";
							$('#btn_submit').attr("hidden", false);
						} else {
							result = "사용중인 아이디입니다.";
							$('#btn_submit').attr("hidden", true);
						}

						$('#idResult').text(result);
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			}
		});
		
		$('#btn_submit').click(function() {
			if($('#pwd').val()==''){
				alert("비밀번호를 입력해주세요");
				$('#pwd').focus();
				return false;
			}
			
			if($('#name').val()==''){
				alert("이름을 입력해주세요");
				$('#name').focus();
				return false;
			}
			
			if($('#phone').val()==''){
				alert("휴대폰번호를 입력해주세요");
				$('#phone').focus();
				return false;
			}
			
			if($('#email').val()==''){
				alert("이메일을 입력해주세요");
				$('#email').focus();
				return false;
			}
		});

		$("#signup_person").click(function() {
			$(".page-move").load('signUp');
		});
		$("#signup_company").click(
				function() {
					$(".signup-contents").load('../company/companyInsertForm');
					$(this).parent().css("background-color", "#DC287C");
					$(this).parent().parent().find("li:first-child a").css(
							"color", "black");
					$(this).parent().parent().find("li:first-child").css(
							"background-color", "#F7F6F6");
					$(this).css("color", "white");
				});

	});
</script>

<%@ include file="../common/footer.jsp"%>