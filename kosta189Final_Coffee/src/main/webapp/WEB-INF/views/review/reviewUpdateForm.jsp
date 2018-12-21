<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- meta -->
	<!-- meta -->
    <meta charset="UTF-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1100">
    <title>Donut</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <!-- favicon -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/odometer-theme-default.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/progress.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/SpoqaHanSans-kr.css"/>
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.js"></script>
    <script src='${pageContext.request.contextPath}/resources/bower_components/markdown-it/dist/markdown-it.js'></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/to-mark/dist/to-mark.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/tui-code-snippet/dist/tui-code-snippet.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/codemirror/lib/codemirror.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/highlightjs/highlight.pack.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/squire-rte/build/squire-raw.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor-Editor.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/codemirror/lib/codemirror.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/highlightjs/styles/github.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/tui-editor/dist/tui-editor-contents.css">

</head>
<body>
   

   
   <div class="project-review-wrap">
        <div class="project-review-container">
            <div class="review-title"><span>모금 후기 수정</span></div>
            <div class="review-content">
     
                <div class="code-html w-100">
                   <div id="review_updateSection"></div>
                   <script class="code-js">
                        var content = '${requestScope.review.reviewContent}';
                        var editor = new tui.Editor({
                            el : document.querySelector('#review_updateSection'),
                            previewStyle : 'vertical',
                            height : '550px',
                            initialEditType : 'wysiwyg',
                            initialValue : content,
                            language : 'ko',
                            viewOnly : false,
                            toolbarItems : [ 'bold', 'image' ]
                        });
                       
                        $(function(){
	                        $("#change").click(function() {
	                          
	                             var content = editor.getValue(); 
	                            var projectNo = ${requestScope.review.projectNo};
	                       		var id= "${requestScope.review.id}";
	                            
	                             $.ajax({
	                               url:"${pageContext.request.contextPath}/review/reviewUpdate",
	                               type:"post",
	                               data: {"reviewContent":content , "projectNo" : projectNo,"id":id}, 
	                               dataType:"text",
	                               success:function(result){
	                                  if(result==1){
	                                	  alert('수정하였습니다.');
	                                	  
	                                	  $(location).attr("href", "${pageContext.request.contextPath}/review/reviewRead/${review.projectNo}");
	                                  }
	                                  
	                                  
	                               },error:function(err){
	                                  alert("err : "+err);
	                               }
	                            })
	                         })
                        });
                    
                        
                       
                    </script>
                </div>
            </div>
            <div class="review-receipt-title">
               <span>영수증</span>
            </div>
            <div class="review-receipt-contents">
                <input type="file">
            </div>
            <div class="review-submit" style="">
                <input type="button" value="수정" id="change">
            </div>
        </div>
    </div>

        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/odometer.min.js"></script>
        <script>
        
        
        </script>
</body>
</html>