<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="project-detail-wrap">
    <div class="cover" style="background-image: url(${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg);">
        <div class="cover-title">
            <div class="cover-status">모금중</div>
            <span><b>${projectDTO.projectSubject}</b></span>
            <div class="cover-subtitle">
                <span>${projectDTO.id}</span>
            </div>
             <div class="update_btn" id="update_btn">
            </div>
            
        <div class="add-favorite" id="bookmark" style="display:inline-block;cursor: pointer">
            
            <span style="color:white;background-color: black;border-radius: 5px;padding: 5px;opacity:0.6;font-size:16px;">
		       <c:choose>
			       	<c:when test="${requestScope.flag==false}">
			            <i class="far fa-star" id="fa-star" style="color:#F9FC0B;font-size:14px;"></i>
			    	</c:when> 
			    	<c:otherwise> 
			            <i class="fas fa-star" id="fa-star" style="color:#F9FC0B;font-size:14px;"></i>
			        </c:otherwise> 
		      </c:choose>     
		          <span>즐겨찾기</span>
            </div>
            
        </div>  
        
    </div>
    <div class="project-detail-container">
            <div class="header">
                
                <div class="header-donation" style="display: inline-block">
                    <table class="project-detail-table">
                       <tr>
                           <td><b>목표금액</b></td>
                           <td><fmt:formatNumber type="number" value="${projectDTO.goal}"/>원</td>
                       </tr>
                       <tr>
                           <td><b>모인금액</b></td>
                           <td style="color:#DC287C"><fmt:formatNumber type="number" value="${projectDTO.totalMoney}"/>원</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 등록일</b></td>
                           <td>${projectDTO.projectRegdate}</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 마감일</b></td>
                           <td style="color:#DC287C">${projectDTO.projectEnd}</td>
                        </tr>
                       <tr>
                           <td><b>참여 인원</b></td>
                           <td>${projectDTO.givePerson}</td>
                       </tr>  
                       <tr>
                           <td><b>카테고리</b></td>
                           <td>${projectDTO.category2}</td>
                       </tr>
                   </table> 
                    <div class="progress-wrap">
                        <progress class="progressbar" value="${projectDTO.percent}" max="100"></progress>
                        <div class="progress-value-wrap">
                            <span class="progress-value">${projectDTO.percent}%</span>
                        </div>
                    </div>
                    
                </div>    
         </div>
        
        <div class="project-detail-main">
            
                <div class="project-detail-tabs">   
                    <ul>
                        <li class="select" id="story"><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                <div class="story">
                    ${projectDTO.story}   
                   	${projectDTO.projectImg}  
                </div>
                
                
                <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li class="select" id="cheer"><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                <div class="cheer">
                
                    <table>
                     <c:choose>
                    <c:when test="${fn:length(list) == 0}">
                            <tr>
                                <td colspan="3" align="center">
                                    조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach var="boardList" items="${list}" varStatus="status">
                            <c:choose><c:when test="${boardList.cheerParentNo==0}">
                        <tr>
                           <td><div class="thumb"><img src="${pageContext.request.contextPath}/resources/images/thumbs/${boardList.memberDTO.picture}"></div></td>
                            <td>${boardList.id}
                            <input type=hidden name="cheerNo" class="cheerNo" value="${boardList.cheerNo}">
                            <input type=hidden name="cheerParentNo" class="cheerParentNo" value="${boardList.cheerParentNo}">
                            </td>
                            <td><span>${boardList.cheerContent}</span> 
                                <div class="replyRead">열기<i class="fas fa-angle-down"></i></div>
                                    <i class="fas fa-pencil-alt user_modify"></i>
                                    <i class="fas fa-times user_delete" class=""></i>
                                <div class="replyContent"></div>
                            </td>
                            <td>${boardList.cheerRegdate}</td>
                        </tr>
                         <c:choose><c:when test="${boardList.cheerNotify==0}">
                        <tr class="cheerTr">
                            <td colspan="4">
                             	<form name="writeForm" method="post" action="${pageContext.request.contextPath}/cheer/cheerReplyInsert"> 
          						    <input type=hidden name="id" value="test2">
          						    <input type=hidden name="cheerNo" value="${boardList.cheerNo}">
          						    <input type=hidden name="projectNo" value="${projectDTO.projectNo}">
	                                <div class="reply-submit" align="center">
	                                    <input type="text"  name="cheerContent" placeholder="답변을 등록해주세요.">
	                                    <input type="submit" value="전송">
	                                </div>
                               </form> 
                                
                            </td>
                        </tr>
                        </c:when>
                        </c:choose>
                            </c:when>
                         <c:when test="${boardList.cheerParentNo!=0}">
                        <tr class="cheerTr" id="a">
                            <td colspan="4">
                                <div class="cheerReply"> ${boardList.cheerContent}</div>
                                <div class="reply-modify-delete">
                                	<input type=hidden name="cheerNo" value="${boardList.cheerNo}">
                                    <i class="fas fa-pencil-alt writer_modify"></i>
                                	<input type=hidden name="cheerParentNo" value="${boardList.cheerParentNo}">
                                    <i class="fas fa-times writer_delete"></i>
                                </div>
                            </td>
                        </tr>
                        </c:when>
                        </c:choose> 
                      </c:forEach>
                    </c:otherwise>
                </c:choose>
                    </table>
                   
                   
                 <!-- 댓글 다는 곳 -->
				<form name="writeForm" method="post" action="${pageContext.request.contextPath}/cheer/cheerInsert"> 
                    <div class="cheerupReply">
                    <!-- 여기에 projectNo랑 id다시받아야함 -->
                    	 <input type=hidden name="id" value="test2">
                    <%-- <input type=hidden name="projectNo" value="${projectDTO.projectNo}"> --%>
                    <input type=hidden name="projectNo" value="${projectDTO.projectNo}">
                    <!-- 이게 왜 되는거지,,,,,,,,,,????????????????????????projectNo -->
                        <input type="text" name="cheerContent" placeholder="50자 이내로 응원을 남겨주세요.">
                        <input type="submit" value="응원하기">
                    </div>
                  </form>
                    
                    
                </div>
                
              <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li class="select" id="qna"><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                
                <div class="qna">
                    <table id="questionTable">

                        <tr style="background-color:#EDEDED">
                            <th>상태</th>
                            <th>문의/답변</th>
                            <th>작성자</th>
                            <th>작성일</th>
                        </tr>
                        

              <c:choose>
                    <c:when test="${fn:length(qnaList) == 0}">
                            <tr>
                                <td colspan="3" align="center">
                                    조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach var="qnaList" items="${qnaList}" varStatus="status">
                           
                         <c:choose>
                         <c:when test="${qnaList.qnaParentNo==0}"><!-- 부모 글이면 -->
                        <tr>
                            <th>
                                  	<c:choose>
                         			<c:when test="${qnaList.qnaNotify==0}">미답변</c:when>
                         			<c:when test="${qnaList.qnaNotify!=0}">답변</c:when>
                         			</c:choose>
                            <input type="hidden" id="qnaNo" value="${qnaList.qnaNo}">
                            </th>
                            <td>
                                <div class="questionContent" >
                                <span>${qnaList.qnaContent}</span>
                                </div> 
                                <div class="user_qna">
                                       <i class="fas fa-pencil-alt user_qna_modify"></i>
                                       <input type="hidden" id="qnaNo" value="${qnaList.qnaNo}">
                                       <i class="fas fa-times user_qna_delete"></i>
                                </div> 
                            </td>
                            <td> ${qnaList.id} </td>
                            <td> ${qnaList.qnaRegdate} </td>
                        </tr>
                    
                        <c:choose>
                         <c:when test="${qnaList.qnaNotify==0}"><!-- 부모글인데 대댓글이 없으면 -->
                        <tr class="questionTr">
                           <td colspan="4">
                           
                           <form name="qnaReplyForm" method="post" action="${pageContext.request.contextPath}/qna/qnaReplyInsert"> 
          						
                                <div class="questionReply">
                                    <div class="questionContentDetail">
                                    <span class="question">Q.</span>
                                          <span>${qnaList.qnaContent} 
                                    </div>
                                     <div class="questionContentReply" >
		                                <span style="color:red">답변을 등록해주세요.</span>
		                                <input type=hidden name="id" value="test2">
          						   		 <input type=hidden name="qnaNo" value="${qnaList.qnaNo}">
          						    	<input type=hidden name="projectNo" value="${projectDTO.projectNo}">
	                              
		                                 <div class="questionContentReply_input">
		                                                <input type="text"  name="qnaContent" placeholder="답변을 등록해주세요.">
		                                                <input type="submit" value="등록">
		                                            </div>
		                                            <div class="writer_qna_reply">
		                                            </div>
		                        	   </div>
                                </div>
                                
                           </form>
                                
                            </td>
                        </tr>
                        </c:when>
                        </c:choose>
                        </c:when>
                       </c:choose>
                                       <c:choose>
                                     <c:when test="${qnaList.qnaParentNo!=0}"> <!-- 대댓글이면 -->
                                    <tr class="questionTr">
                                       <td colspan="4">
                                            <div class="questionReply">
                                                <div class="questionContentDetail">
                                                <span class="question">Q.</span>
                                                       <span class="myquestion">${qnaList.qnaContent} 
                                                </div>
                                    <div class="questionContentReply" id="${qnaList.qnaParentNo}">
                                    <span>${qnaList.qnaContent}</span>
                                       <div class="writer_qna_reply">
                                       <input type=hidden name="qnaParentNo" value="${qnaList.qnaParentNo}">
                                        <input type=hidden name="qnaNo" value="${qnaList.qnaNo}">
                                            <i class="fas fa-pencil-alt writer_qna_modify"></i>
                                            <i class="fas fa-times writer_qna_delete"></i>
                                       </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </c:when>
                        </c:choose>
                     
                             </c:forEach>
                          </c:otherwise>
                       </c:choose>
                    </table>
                    

                  	<form name="writeForm" method="post" action="${pageContext.request.contextPath}/qna/qnaInsert"> 
                    <div class="qna_input_form">
                    <!-- 여기에 projectNo랑 id다시받아야함 -->
                    	 <input type=hidden name="id" value="test2">
                    <input type=hidden name="projectNo" value="${projectDTO.projectNo}">
                    <textarea name="qnaContent" placeholder="50자 이내로 질문 남겨주세요."></textarea>
                        <!-- <input type="text" name="qnaContent" placeholder="50자 이내로 질문 남겨주세요."> -->
                        <input type="submit" value="질문하기">
                    </div>
                  </form>
                    
                    
                </div>
                
                

                
                
               <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li class="select" id="review"><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                
                <div class="review">
                    <table>
                        <tr style="background-color:#EDEDED">
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>원빈 1차 모금 후기</td>
                            <td>2018.12.10 17:34</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>원빈 2차 모금 후기</td>
                            <td>2018.12.11 12:53</td>
                        </tr>
                    </table>
                </div>
                
                
                <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li class="select" id="donate"><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                <!-- 기부페이지 -->
                <div class="donate">
                </div>
                
                
                <!--  리워드-->
                <div class="review">
                    <table>
                        <tr>
                            <th>리워드번호</th>
                            <th>리워드품목</th>
                            <th>금액조건</th>
                        </tr>
                        <c:forEach var="rewardList" items="${projectDTO.reward}">
                        <tr>
                            <td>${rewardList.rewardNo}</td>
                            <td>${rewardList.rewardItem}</td>
                            <td>${rewardList.condition}</td>
                        </tr>
                        </c:forEach>
                    </table>
                </div>
                <!-- 프로젝트 물품 -->
                <div class="projectItem">
                    <table>
                        <tr>
                            <th>품목명/총물품갯수</th>
                            <th>개당가격</th>
                            <th>기부수량/목표수량</th>
                            <th>총가격</th>
                        </tr>
                        
                        project Item 갯수 : ${fn:length(projectDTO.item)}
                        <c:forEach var="projectItem" items="${projectDTO.item}">
                        <tr>
                            <td>${projectItem.itemName}</td>
                            <td>${projectItem.itemPrice}</td>
                            <td>${projectItem.itemAmount}/${projectItem.goalAmount}</td>
                            <td>${projectItem.itemPrice * projectItem.itemAmount}</td>
                        
                        </tr>
                        </c:forEach>
                    </table>
                </div>
        </div>
     </div>  
</div>



<script>
$(".user_modify").on('click', function(){
	console.log("hey");
    var user_reply = $(this).parent().find('span').text();
    var cheerNo = $(this).parent().parent().find('input.cheerNo').val();
    var cheerParentNo = $(this).parent().parent().find('input.cheerParentNo').val();
    /* var projectNo = ${projectDTO.projectNo}; */
    $(this).parent().find('span').html('<input class="user_modify_value" size="50" type="text"><input type="button" class="update_cheer" value="수정"><input type="button" value="취소">');
    $(this).parent().parent().find('span>input[type=text]').val(user_reply);
    
    $.ajax({
		   url:"${pageContext.request.contextPath}/cheer/cheerUpdateForm" , //서버요청주소 현재링크기준으로
		   type:"post" , //전송방식(get or post)
		   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
		   data:{
			   "cheerNo":cheerNo,
			   "cheerParentNo":cheerParentNo
			   }, //서버에게 보낼 parameter정보
		   //cheerNo=${boardList.cheerNo} 
		   success:function(result){
		
		   } , //성공했을때
		   error:function(err){
			   alert(err+" => 오류 발생")
		   }  //실패했을때
	   })//ajax끝  
});
// 연필 누르는 곳 - qna 수정
$(".writer_qna_modify").on('click', function(){
	 var writer_qna_value = $(this).parent().parent().find('span').text();
	    
    var qnaNo = $(this).prev().val();
    var cheerParentNo = $(this).prev().prev().val();
    /* var projectNo = ${projectDTO.projectNo}; */
    $(this).parent().parent().find('span').html('<input type="text" size="50"> <input type="button" class="update_reply_qna" value="수정"><input type="button" value="취소">');
    $(this).parent().parent().find('input[type=text]').val(writer_qna_value);
    
    $.ajax({
		   url:"${pageContext.request.contextPath}/qna/qnaUpdateForm" , //서버요청주소 현재링크기준으로
		   type:"post" , //전송방식(get or post)
		   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
		   data:{
			   "qnaNo":qnaNo,
			   "cheerParentNo":cheerParentNo
			   }, //서버에게 보낼 parameter정보
		   //cheerNo=${boardList.cheerNo} 
		   success:function(result){
		
		   } , //성공했을때
		   error:function(err){
			   alert(err+" => 오류 발생")
		   }  //실패했을때
	   })//ajax끝   
});

   //cheer 삭제
$(".user_delete").on('click', function(){
	    var cheerNo = $(this).parent().parent().find('input.cheerNo').val();
		var projectNo=1; //이거 반장님꺼 받아와야함
		var cheerParentNo = 3; // 아무 숫자나 넣어도 됨. 0만 아니면 되니까. 어차피 값 안써요 
	//	alert(cheerNo);
	    $.ajax({
			   url:"${pageContext.request.contextPath}/cheer/cheerDelete" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "cheerNo":cheerNo,
				   "projectNo":projectNo,
				   "cheerParentNo":cheerParentNo
				   },
				   success:function(deleteResult){
						alert(deleteResult.message);
						history.go(0);
				} , //성공했을때
					   error:function(err){
						   alert(err+" => 오류 발생")
					   }  //실패했을때 */
			   
		   })//ajax끝  
});

   
   
//cheer 대댓글 수정
$(".writer_modify").on('click', function(){
    var writer_reply = $(this).parent().prev().text();
    var cheerNo = $(this).prev().val();
    
    
    $(this).parent().prev().html('<input class="writer_modify_value" size="50" type="text"><input type="button" class="update_reply_cheer" value="수정"><input type="button" value="취소">');
    $(this).parent().prev().find('input[type=text]').val(writer_reply);
    
   $.ajax({
		   url:"${pageContext.request.contextPath}/cheer/cheerUpdateForm" , //서버요청주소 현재링크기준으로
		   type:"post" , //전송방식(get or post)
		   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
		   data:{
			   "cheerNo":cheerNo
			   }, //서버에게 보낼 parameter정보
		   //cheerNo=${boardList.cheerNo} 
		   success:function(result){
		   } , //성공했을때
		   error:function(err){
			   alert(err+" => 오류 발생")
		   }  //실패했을때
	   })//ajax끝 
    
})

// cheer 대댓글 삭제
$(".writer_delete").on('click', function(){
	    var cheerNo = $(this).prev().prev().prev().val();
	    var cheerParentNo = $(this).prev().val();
		var projectNo=1; //이거 반장님꺼 받아와야함
	    $.ajax({
			   url:"${pageContext.request.contextPath}/cheer/cheerDelete" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "cheerNo":cheerNo,
				   "projectNo":projectNo,
				   "cheerParentNo":cheerParentNo
				   },
				   success:function(deleteResult){
						alert(deleteResult.message);
						history.go(0);
				} , //성공했을때
					   error:function(err){
						   alert(err+" => 오류 발생")
					   }  //실패했을때 */
			   
		   })//ajax끝  
});


//qna 열닫
$(".questionContent").on('click',function(){
    if($(this).parent().parent().next().css('display') == 'none'){
        $(this).parent().parent().next().css('display', 'table-row');
        var myquestion = $(this).children().text();
    	$(this).parent().parent().next().find('span.myquestion').text(myquestion);
   
    }else if($(this).parent().parent().next().css('display') == 'table-row'){
        $(this).parent().parent().next().css('display', 'none');
    }
})

$(".replyRead").on('click', function(){
    if($(this).parent().parent().next().css('display') == 'none'){
        $(this).html('닫기<i class="fas fa-angle-up">');
        $(this).parent().parent().next().css('display', 'table-row');
    }else if($(this).parent().parent().next().css('display') == 'table-row'){
        $(this).html('열기<i class="fas fa-angle-down">');
        $(this).parent().parent().next().css('display', 'none');
    }
})

//  qna 수정
    $(".user_qna_modify").on('click',function(){
        var user_qna_value = $(this).parent().prev().find('span').text();
        
        $(this).parent().prev().find('span').html('<input type="text" size="50"> <input type="button" class="update_qna" value="수정"><input type="button" value="취소">');
        $(this).parent().prev().find('input[type=text]').val(user_qna_value);
        
        $($(this).parent().prev().find('input[value=취소]')).on('click',function(){
            $(this).empty();
            $(this).text(user_qna_value);  
        })
        var qnaNo = $(this).next().val();
           $.ajax({
		   url:"${pageContext.request.contextPath}/qna/qnaUpdateForm" , //서버요청주소 현재링크기준으로
		   type:"post" , //전송방식(get or post)
		   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
		   data:{
			   "qnaNo":qnaNo
			   }, //서버에게 보낼 parameter정보
		   //cheerNo=${boardList.cheerNo} 
		   success:function(result){
		
		   } , //성공했을때
		   error:function(err){
			   alert(err+" => 오류 발생")
		   }  //실패했을때
	   })//ajax끝   
    })
    
    //qna 삭제
    $(".user_qna_delete").on('click',function(){
    	    var qnaNo = $(this).prev().val();
    		var projectNo=1; //이거 반장님꺼 받아와야함
    		var qnaParentNo = 3; // 아무 숫자나 넣어도 됨. 0만 아니면 되니까. 어차피 값 안써요 
    		alert(qnaNo);
    	     $.ajax({
    			   url:"${pageContext.request.contextPath}/qna/qnaDelete" , //서버요청주소 현재링크기준으로
    			   type:"post" , //전송방식(get or post)
    			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
    			   data:{
    				   "qnaNo":qnaNo,
    				   "projectNo":projectNo,
    				   "qnaParentNo":qnaParentNo
    				   },
    				   success:function(deleteResult){
    						alert(deleteResult.message);
    						history.go(0);
    				} , //성공했을때
    					   error:function(err){
    						   alert(err+" => 오류 발생")
    					   }  //실패했을때 
    			   
    		   })//ajax끝   
    });


    $(".writer_qna_delete").on('click',function(){
    	 var qnaNo = $(this).prev().prev().val();
 	    var qnaParentNo = $(this).prev().prev().prev().val();
 		var projectNo=1; //이거 반장님꺼 받아와야함
 	    $.ajax({
 			   url:"${pageContext.request.contextPath}/qna/qnaDelete" , //서버요청주소 현재링크기준으로
 			   type:"post" , //전송방식(get or post)
 			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
 			   data:{
 				   "qnaNo":qnaNo,
 				   "projectNo":projectNo,
 				   "qnaParentNo":qnaParentNo
 				   },
 				   success:function(deleteResult){
 						alert(deleteResult.message);
 						history.go(0);
 				} , //성공했을때
 					   error:function(err){
 						   alert(err+" => 오류 발생")
 					   }  //실패했을때
 			   
 		   })//ajax끝  
    });

    //cheer 대댓글 수정1
$(document).on("click","input[value=수정]",function(){
	
	if($(this).attr("class") == 'update_reply_cheer'){ 
		/* alert("대댓글 수정"); */
		var projectNo = 1;
		var user_reply_point = $(this).parent().parent().find('input[type=text]');
		var user_reply = user_reply_point.val();
		 if(user_reply == ""){
             alert("수정할 내용을 입력하세요.");
             user_reply_point.focus();
             return false;
         }
		 $.ajax({
			  url:"${pageContext.request.contextPath}/cheer/cheerUpdate" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "cheerContent":user_reply,
				   "projectNo":projectNo
				   },
				   success:function(updateResult){
					   alert("수정에 성공했습니다.");
						history.go(0);
					   } ,
					   error:function(err){
						   alert("에러발생");
					   } 
				   })//ajax끝   
  
	} else if($(this).attr("class") == 'update_reply_qna'){ 
		/* alert("대댓글 수정"); */
		var projectNo = 1;
		var qna_reply_point = $(this).parent().parent().find('input[type=text]');
		var qna_reply = qna_reply_point.val();
		
	    alert(qna_reply);
		 if(qna_reply == ""){
             alert("수정할 내용을 입력하세요.");
             qna_reply_point.focus();
             return false;
         }
		  $.ajax({
			  url:"${pageContext.request.contextPath}/qna/qnaUpdate" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "qnaContent":qna_reply,
				   "projectNo":projectNo
				   },
				   success:function(updateResult){
					   alert("수정에 성공했습니다.");
						history.go(0);
					   } ,
					   error:function(err){
						   alert("에러발생");
					   } 
				   })//ajax끝   
   
	} else if($(this).attr("class") == 'update_cheer'){ // 그냥 댓글 수정
		/* alert($(this).parent().parent().find('input[type=text]').val()); */
		var projectNo = 1; //수정해라
		var user_reply_point = $(this).parent().parent().find('input[type=text]');
		var user_reply = user_reply_point.val();
		 if(user_reply == ""){
             alert("수정할 내용을 입력하세요.");
             user_reply_point.focus();
             return false;
         }
		console.log(user_reply);
	 	$.ajax({
			  url:"${pageContext.request.contextPath}/cheer/cheerUpdate" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "cheerContent":user_reply,
				   "projectNo":projectNo
				   },
				   success:function(updateResult){
					   alert("수정에 성공했습니다.");
						history.go(0);
					   } ,
					   error:function(err){
						   alert("에러발생");
					   } 
				   })//ajax끝   
   
	} else if($(this).attr("class") == 'update_qna'){ // QnA 수정
		/* alert("대댓글 수정"); */
		var projectNo = 1;
		var user_qna_value = $(this).prev().val();
		   $.ajax({
			  url:"${pageContext.request.contextPath}/qna/qnaUpdate" , //서버요청주소 현재링크기준으로
			   type:"post" , //전송방식(get or post)
			   dataType:"json", //서버가 보내주는 데이터타입(text,html,xml,json)
			   data:{
				   "qnaContent":user_qna_value
				   },
				   success:function(updateResult){
					   alert("수정에 성공했습니다.");
						history.go(0);
					   } ,
					   error:function(err){
						   alert("에러발생");
					   } 
				   })//ajax끝   
    
	}
});
//지성, 병현 기능 추가

$(function(){
       var progressbar = $(".progressbar"),
				max = progressbar.attr('max'),
//				time = (10/max)*5,
                initValue = 0,
		        value = progressbar.val();

		    var loading = function() {
		        initValue += 1;
		        addValue = progressbar.val(initValue);

                progressbar.next().children().html(initValue + '%');
//		        $(".progress-value").html(initValue + '%');

		        if (initValue == value) {
		            clearInterval(animate);
		        }
		    };

		    var animate = setInterval(function() {
		        loading();
		    }, 10);
      })  
       
       
    $(function(){
         var progressbar = $(".goods-progressbar"),
				max = progressbar.attr('max'),
//				time = (10/max)*5,
                initValue = 0,
		        value = progressbar.val();

		    var loading = function() {
		        initValue += 1;
		        addValue = progressbar.val(initValue);

		        progressbar.next().children().html(initValue + '%');
//                $(".progress-value").html(initValue + '%');

		        if (initValue == value) {
		            clearInterval(animate);
		        }
		    };

		    var animate = setInterval(function() {
		        loading();
		    }, 10);
    })
      
    
   
$(function(){
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
	//병현 즐겨찾기 추가 및 삭제
  $("#bookmark").on("click" , function(){       
	  var starImg =$("#fa-star").attr("class");
	  var id = "${favoriteDTO.id}";
	  var projectNo = ${favoriteDTO.projectNo};
	  if( starImg == 'far fa-star'){
		    $.ajax({
	               url :"${pageContext.request.contextPath}/project/insertFavorite", 
	               type :"post", 
	               dataType :"json", 
	               data : {"id" : id, "projectNo" : projectNo},
	               success : function(result){
	                  if(result==1){
	                	  $("#fa-star").attr("class","fas fa-star");
	                  }
	               },
	               error : function(err){
	                  alert(err + "=> 예외발생!!");
	               }       
	          });
	  } else if( starImg == 'fas fa-star'){
		  $.ajax({
             url :"${pageContext.request.contextPath}/project/deleteFavorite",
             type :"post",
             dataType :"json", 
             data : {"id" : id, "projectNo" : projectNo},
             success : function(result){
                if(result==1){
               	 $("#fa-star").attr("class","far fa-star");
                }
             },
             error : function(err){
                alert(err + "=> 예외발생!!");
             }       
        }); 
	  }
  });// 즐겨찾기 클릭시
  
  //글쓴이 확인이 되면 삭제버튼과 수정버튼을 추가한다.
  if("${updateFlag}" == "true"){
	  str="";
	  str +="<input type='button' class='btn_2' value='수정' style='width:100px;'>"
	  $("#update_btn").html(str);
  }

  $("input[value=수정]").on("click",function(){
	  location.href="projectUpdateForm"
  });
  
});
    

</script>

<%@ include file="../common/footer.jsp" %>