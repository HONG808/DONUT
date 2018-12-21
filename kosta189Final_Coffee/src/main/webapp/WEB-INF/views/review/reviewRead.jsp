<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<!-- favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/animate.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/odometer-theme-default.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/progress.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/SpoqaHanSans-kr.css" />
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<!-- font -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.js"></script>
    <script src='${pageContext.request.contextPath}/resources/bower_components/markdown-it/dist/markdown-it.js'></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/to-mark/dist/to-mark.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/tui-code-snippet/dist/tui-code-snippet.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/codemirror/lib/codemirror.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/highlightjs/highlight.pack.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/squire-rte/build/squire-raw.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor-Editor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor-Viewer.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/codemirror/lib/codemirror.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/highlightjs/styles/github.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor-contents.css">

<SCRIPT language=javascript>
   $(function(){
	   $("input[value=수정하기]").click(function(){
		  
		   
		   $("#requestForm").attr("action", "${pageContext.request.contextPath}/review/reviewUpdateForm/${requestScope.review.projectNo}");
		   $("#requestForm").submit();
	   })
	   
	   
	   
		   $("input[value=삭제하기]").click(function(){
			   if(confirm("정말 삭제하시겠습니까?")==true){
				   $("#requestForm").attr("action", "${pageContext.request.contextPath}/review/reviewDelete");
				   $("#requestForm").submit();
			   }
			   else{
				   return;
				   
			   }
			   
	   })
	   
	
	})
	</script>
<style>
 a{
	 text-decoration:underline;
	 
 }
</style>
</head>
<body>



	<div class="project-review-wrap">
		<div class="project-review-container">
			<div class="review-title">
			${review.id}
				<span>최종 모금 후기</span>
			</div>
			<div class="review-regdate">
				<span>등록일 : ${requestScope.review.reviewRegdate}</span>
			</div>
			<!-- <div class="code-html w-100">
				<div id="review-content"></div>
					<script class="code-js">
                        var content = '';
                        var editor = new tui.Editor({
                            el : document.querySelector('#review-content'),
                            previewStyle : 'vertical',
                            height : '550px',
                            initialEditType : 'wysiwyg',
                            initialValue : content,
                            language : 'ko',
                            viewOnly : true,
                            toolbarItems : [ ],
                            /*toolbarItems : [' '] */  
                      });
                        editor.setValue('${requestScope.review.reviewContent}');
            		</script>
            	
            </div> -->
            <div class="code-html">

    			<div id="review-content"></div>
    		</div>
    		<script class="code-js">
      		var content = ['${requestScope.review.reviewContent}'].join('\n');
      				$('#review-content').tuiEditor({
        				height: '300px',
        				initialValue: content
      				});
    		</script>
			<div class="review-receipt-title">
				<span>영수증</span>
			</div>
			<div class="review-receipt-contents">
				<%-- <img
					src="${pageContext.request.contextPath}/resources/images/thumbs/test4.jpg"> --%>
			</div>
			
			  <c:if test="${review.id==memberDTO.id}">
				<form name="requestForm" method="post" id="requestForm">
		     <input type=hidden name="projectNo" value="${requestScope.review.projectNo}"> 
		     <input type=hidden name="id" value="${requestScope.review.id}"> 
		     <div style=text-align:center><input type=button value="수정하기"><input type=button value="삭제하기"></div>
				</form>
				</c:if>
		<div style="text-align:right"><a href="${pageContext.request.contextPath}/project/projectRead?projectNo=${requestScope.projectDTO.projectNo}" >프로젝트로 돌아가기</a></div>
		</div>
		</div>
	
	

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/index.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/odometer.min.js"></script>
	
</body>
</html>