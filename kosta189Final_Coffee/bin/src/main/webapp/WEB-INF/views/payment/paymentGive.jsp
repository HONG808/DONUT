<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   
</head>
<body>
   
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<!--    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->   
<!--    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
 -->   <script type="text/javascript">
      //IMP.init('imp15231326'); //가맹점 식별코드"를 사용합니다.
      //var apiKey = '8001201219160277';
      //var apiSecret = 'vPfS0qHRvL2KNdZWb7zfniXvNcPVA4B5TRXThFKNqNxe0wacDJr02pwPClKcpmhjefdwUXjkLQzMmJZZ';
      
      var fd = new FormData();
      fd.append("imp_key","8001201219160277");
      fd.append("imp_secret","vPfS0qHRvL2KNdZWb7zfniXvNcPVA4B5TRXThFKNqNxe0wacDJr02pwPClKcpmhjefdwUXjkLQzMmJZZ");
      
      //$.post( 'https://api.iamport.kr/users/getToken', fd);
      $.ajax({
            url : "https://api.iamport.kr/users/getToken", //서버 요청 주소
            type : "post", //전송 방식(get or post)
            data : fd,
            processData: false,
            success : function(result){ //성공했을 때
               console.log(result);
               console.log(result.response.access_token);
            },
            error : function(request,status,error){//실패했을 때
               alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);               
            }
         });

      
   </script>
   

</body>
</html>