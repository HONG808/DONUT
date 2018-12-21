<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../../common/header.jsp"%>

<div class="signup-wrap">
	<div class="signup-container">
		<div class="signup-title">

			<ul>
				<li><a id="signup_person" href="${pageContext.request.contextPath}/member/signUp">개인회원가입</a></li>
				<li><a id="signup_company" href="${pageContext.request.contextPath}/company/companyInsertForm">단체회원가입</a></li>
			</ul>

		</div>
		
	  <form name="insertCInfo" method="post" action="${pageContext.request.contextPath}/company/companyInsert" enctype="multipart/form-data">	
		<div class="signup-contents">
			<div class="signup-company">
				<div class="signup-items">
					<div class="signup-label">
						<span style="color: red;">*</span><span>아이디</span>
					</div>
					<div class="signup-input">
						<input type="text" id="companyid" name="id" placeholder="아이디"> 
						<input type="button" class="btn_2" id="btn_idCheckC" value="중복확인" style="width: 70px;">
						<span id="idResultC" name="idResultC" style="display: block; color: red"></span>
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
						<span style="color: red;">*</span><span>단체명</span>
					</div>
					<div class="signup-input">
						<input type="text" id="company.companyName" name="company.companyName" placeholder="단체명">
						<input type="button" class="btn_2" id="btn_companyCheck" value="검색" style="width: 70px;">
					</div>
				</div>
				<div class="signup-items">
					<div class="signup-label">
						<span style="color: red;">*</span><span>주소</span>
					</div>
					<div class="signup-input">
						<input type="text" id="company.companyAddr" name="company.companyAddr" placeholder="주소">
						<input type="button" class="btn_2" id="btn_companyAddrCheck" value="검색" style="width: 70px;">
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
				<div class="signup-items">
					<div class="signup-label">
						<span style="color: red;">*</span><span>담당자</span>
					</div>
					<div class="signup-input">
						<input type="text" id="name" name="name" placeholder="담당자">
					</div>
				</div>
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
						<span style="color: red;">*</span><span>전화번호</span>
					</div>
					<div class="signup-input">
					<input type="text" id="company.companyCall" name="company.companyCall" size="12" placeholder="전화번호">
					</div>
				</div>

				<div class="signup-items">
					<div class="signup-label">
						<span style="color: red;">*</span><span>계좌번호</span>
					</div>
					<div class="signup-input">
						<input type="text" id="company.account" name="company.account" placeholder="계좌번호">
						<select id="company.bank" name="company.bank">
							<option value="신한은행">신한</option>
							<option value="국민은행">국민</option>
							<option value="우리은행">우리</option>
							<option value="하나은행">하나</option>
							<option value="농협은행">농협</option>
							<option value="기업은행">기업</option>
							<option value="대구은행">대구</option>
						</select>
					</div>
				</div>
				<div class="signup-items">
					<div class="signup-label">
						<span>소개</span>
					</div>
					<div class="signup-input">
						<textarea
							style="width: 70%; height: 45px; resize: none; padding: 10px; overflow: hidden; position: relative;"
							maxlength="50" placeholder="50자 이내로 단체를 소개해주세요."></textarea>
					</div>
				</div>

				<!-- 가입 버튼 -->
				<div class="signup-save"
					style="margin-top: 20px; display: flex; justify-content: center;">
					<input type="submit" class="btn_2" id="btn_submitC" value="가입" style="width: 100px;">
				</div>
			</div>
		</div>
	  </form>	
	</div>
</div>
<script>
	$(function(){
		$('#btn_submitC').attr('hidden', true);

		$('#btn_idCheckC').click(function() {
			if ($('#companyid').val() == '') {
				$('#idResultC').text('id를 입력하세요');
			} else {
				$.ajax({
					url : "../member/idCheck",
					type : "post",
					data : "id=" + $('#companyid').val(),	//문제 -id중복검사안됨
					dataType : "text",
					success : function(result) {
						console.log(result)
						if (result == "success") {
							result = "사용가능한 아이디입니다.";
							$('#btn_submitC').attr("hidden", false);
						} else {
							result = "사용중인 아이디입니다.";
							$('#btn_submitC').attr("hidden", true);
						}

						$('#idResultC').text(result);
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			}
		});
		
		$('#btn_submitC').click(function() {
			if($('#pwd').val()==''){
				alert("비밀번호를 입력해주세요");
				$('#pwd').focus();
				return false;
			}
			
			if($('#company.companyName').val()==''){
				alert("단체명을 입력해주세요");
				$('#company.companyName').focus();
				return false;
			}

			if($('#company.companyAddr').val()==''){
				alert("주소를 입력해주세요");
				$('#company.companyAddr').focus();
				return false;
			}
			
			if($('#name').val()==''){
				alert("담당자의 성함을 입력해주세요");
				$('#name').focus();
				return false;
			}
			
			if($('#email').val()==''){
				alert("이메일을 입력해주세요");
				$('#email').focus();
				return false;
			}
			
			if($('#company.companyCall').val()==''){	//문제 -전화번호없어도 회원가입가능
				alert("전화번호를 입력해주세요");
				$('#company.companyCall').focus();
				return false;
			}
			
			if($('#company.account').val()==''){	//문제 -계좌번호없어도 회원가입가능
				alert("계좌번호를 입력해주세요");
				$('#company.account').focus();
				return false;
			}
		});
		
		
	})
	


</script>

<%@ include file="../../common/footer.jsp"%>