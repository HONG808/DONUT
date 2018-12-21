<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script><!--kakao login API -->

<div class="login-wrap clearfix">
	<div class="login-container">
		<div class="login-select" style="font-size: 25px;">
			<input type="radio" id="person" name="tab-menu" checked> 
			<label for="person">개인</label> 
			<input type="radio" id="company" name="tab-menu"> 
			<label for="company">단체</label>
		</div>


		<div class="person-login" id="person-login">
	<form method="post" action="loginCheck">
			<p>로그인</p>
			<input type="text" id="id" name="id" placeholder="아이디"> 
			
			<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
				
			<input type="submit" class="btn" value="로그인"></input>
	</form>
			<div class="sns-login">
				<button class="btn sign" id="btn_signUpM">회원가입</button>
				<a id="kakao-login-btn"></a>
				<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" scope="public_profile,email" onlogin="checkLoginState();"></div>
				
			</div>
		</div>
	
	<form method="post" action="loginCheck">
		<div class="company-login hidden" id="company-login">
			<p>로그인</p>
			<input type="text" id="id" name="id" placeholder="아이디">
			<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
			<button class="btn">로그인</button>
			<div class="sns-login">
				<button class="btn sign" id="btn_signUpC">회원가입</button>
			</div>
		</div>
	</form>
   </div>
</div>
<script>
//카카오톡 로그인을 위한 스크립트
Kakao.init('be41100ffa5ef4d98b212542f79877aa');
Kakao.Auth.createLoginButton({
  container: '#kakao-login-btn',
  success: function(authObj) {
    Kakao.API.request({
      url: '/v2/user/me',
      success: function(res) {
    	console.log(res);
        var id = res.id;
        var name = res.properties.nickname;
		var email = res.kakao_account.email;
		
         $.ajax({
			url : "loginAPI",
			type : "post",
			data :{
				id : id,
				name :name,
				email : email
			},
			dataType : "json",
			success : function(result) {
				console.log(result)
			},
			error : function(err) {
				alert("실패  : " + err);
			} 
		})
      }, // 카카오 로그인 성공시
      fail: function(error) {
        alert(JSON.stringify(error));
      }
    });
  },
  fail: function(err) {
    alert(JSON.stringify(err));
  }
});





	$(function() {
		
		$('#btn_signUpM').click(function(){
			location.href="/web/member/signUp";
		});
		
		$('#btn_signUpC').click(function(){
			alert("5");
			location.href="/abc";	//문제-단체회원가입 페이지로 이동X
		});

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
	
	
	
// 페이스 북버튼 초기화 
window.fbAsyncInit = function() {
    FB.init({
      appId            : '1261648697309902',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v3.2'
    });
  };

  // 로그인 실행
 function statusChangeCallback(response) {
    console.log(response);
    if (response.status === 'connected') { // 로그인이 정상적으로 되었을 때,
        console.log(response.authResponse);
        autoServerLogin(response.authResponse.accessToken);
        //로그인 후 토큰값 확인 후 서버에 요청하기 위함
    } else { // 로그인이 되지 않았을 때,
        console.log("로그인 되지 않았음");
    }
  }
    
  //상태 콜백 함수
  function checkLoginState() {
      FB.getLoginStatus(function(response) { 
        statusChangeCallback(response);
      });
  }
  
  // 로그인 실행
 function autoServerLogin(accessToken) {
	    $.getJSON(
	        '${pageContext.request.contextPath}/member/facebookLogin', 
	        {'accessToken': accessToken}, 
	        function(result) {
	          if (result.status == 'login') {
	              alert('로그인 성공완료');
	          } else if(result.status == 'signUp'){
	        	  alert('회원가입 완료');
	          }	 else {
	              alert('로그인 실패입니다!');
	          }
	    });
	}

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
		
	
</script>

<%@ include file="../common/footer.jsp" %>