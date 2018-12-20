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
            <span><b>박효신</b></span>
            <div class="cover-subtitle">
                <span>꺄</span>
            </div>
            <div class="add-favorite" style="display:inline-block;cursor: pointer">
           		<span style="color:white;background-color: black;border-radius: 5px;padding: 5px;opacity:0.6;font-size:16px;">
             	   <i class="far fa-star" style="color:#F9FC0B;font-size:14px;"></i>
            	    <i class="fas fa-star" style="color:#F9FC0B;font-size:14px;"></i>
            		즐겨찾기
            	</span>
            </div>
        </div>  
    </div>
    <div class="project-detail-container">
            <div class="header">
                
                <div class="header-donation" style="display: inline-block">
                    <table class="project-detail-table">
                       <tr>
                           <td><b>목표금액</b></td>
                           <td>100,000,000원</td>
                       </tr>
                       <tr>
                           <td><b>모인금액</b></td>
                           <td style="color:#DC287C">76,020,200원</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 등록일</b></td>
                           <td>2018.12.09</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 마감일</b></td>
                           <td style="color:#DC287C">2018.12.31</td>
                        </tr>
                       <tr>
                           <td><b>참여 인원</b></td>
                           <td>321명</td>
                       </tr>  
                       <tr>
                           <td><b>카테고리</b></td>
                           <td>문화</td>
                       </tr>
                   </table> 
                    <div class="progress-wrap">
                        <progress class="progressbar" value="76" max="100"></progress>
                        <div class="progress-value-wrap">
                            <span class="progress-value">0%</span>
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
                    <h2>대한민국임시정부기념사업회와 MBC &#35;잃어버린 시간을 찾아서&#35;가 대한민국 임시정부수립 100주년을 기념합니다</h2>
                    <p>우리 헌법전문은 '대한민국은 대한민국 임시정부의 법통을 계승했음'을 분명히 밝히고 있습니다. 대한민국 임시정부는 우리 역사가 '임금의 나라'에서 '국민의 나라'로 바뀌는 혁명적 전환점이었습니다. 민주공화정을 우리 역사에 뿌리내린 것이 임시정부였습니다. 조국 광복을 견인한 것도 임시정부의 빛나는 업적입니다. 1932년 이봉창 윤봉길 의거, 1940년 광복군 창립, 한국 독립을 견인한 1943년 카이로선언, 1945년 국내진공작전 수립까지, 임시정부의 광복을 향한 도정은 거침이 없었습니다. 또한 임시정부는 각 정파를 망라한 거대한 '통합의 용광로'였습니다. 조국 광복의 대의 아래 좌우 이념의 차이는 중요하지 않았습니다. 임시정부의 깃발에 모든 정파가 모였고, 독립의 한 길로 정진했습니다.</p>
                    <br>
                    <br>
                    <h2>김수로, 박찬호, 김동완, 강한나, 공찬이 독립원정대가 되어 만난 독립운동가들의 땀과 피와 삶.</h2>
                    <p>1919년 상하이에서 1945년 충칭까지, 대한민국 임시정부는 남의 땅 중국에서 27년의 세월을 견디어냈습니다. 그러나 우리는 대한민국 임시정부의 업적을 제대도 알지 못합니다. 대한민국 탄생을 위해 독립운동가들이 바친 땀과 피와 삶에 대해선 더 더욱 알지 못합니다. 
                    MBC가 대한민국 임시정부 수립 100주년을 기념해 제작하는 프로그램 &#35;잃어버린 시간을 찾아서&#35;에 김수로, 박찬호, 김동완, 강한나, 공찬이 독립원정대로 참여하였습니다. 우리가 기억해야 하지만 아직 제대로 알지 못하는 독립운동가, 광복군의 하루 하루의 삶을 체험하기 위해 일제강점기 상하이와 충칭으로 갔습니다. 
                    독립원정대원들은 상하이임시정부 사람들이 살았던 집에서 자고, 그분들이 먹었던 음식을 먹었습니다. 생계와 독립자금 마련을 위해 말도 통하지 않았던 곳에서 돈을 벌기 위해 했던 일들을  독립원정대가 직접 해보았습니다. 언제 독립이 될지, 아니 조국이 독립은 되는 것인지 불투명했던 시기에 목숨을 바치겠다고 모였던 광복군의 훈련도 받았습니다    . 한     순간도     쉽지가     않았습니    다. 일제강점기에 고향의 안락함을 떠나 말도 통하지 않던 중국 땅에서 불확실한 조국 독립을 위해 독립운동가들이 버텨낸 그 하    루 하루. 독립    원정대원들이 일    제강점기 상하이    와 충칭으로 떠    난 원정의 체험을 통해서 얻은 교훈은, 독립운동가들이 그 하루, 하루를 살아내는 그 일상의 삶이야말로 우리가 진정 기억해야 할 것이라는 점입니다.</p>
                   <br><br>
                   <h2>대한민국임시정부기념사업회와 MBC &#35;잃어버린 시간을 찾아서&#35;가 대한민국 임시정부수립 100주년을 기념합니다</h2>
                    <p>우리 헌법전문은 '대한민국은 대한민국 임시정부의 법통을 계승했음'을 분명히 밝히고 있습니다. 대한민국 임시정부는 우리 역사가 '임금의 나라'에서 '국민의 나라'로 바뀌는 혁명적 전환점이었습니다. 민주공화정을 우리 역사에 뿌리내린 것이 임시정부였습니다. 조국 광복을 견인한 것도 임시정부의 빛나는 업적입니다. 1932년 이봉창 윤봉길 의거, 1940년 광복군 창립, 한국 독립을 견인한 1943년 카이로선언, 1945년 국내진공작전 수립까지, 임시정부의 광복을 향한 도정은 거침이 없었습니다. 또한 임시정부는 각 정파를 망라한 거대한 '통합의 용광로'였습니다. 조국 광복의 대의 아래 좌우 이념의 차이는 중요하지 않았습니다. 임시정부의 깃발에 모든 정파가 모였고, 독립의 한 길로 정진했습니다.</p>
                    <br>
                    <br>
                    <h2>김수로, 박찬호, 김동완, 강한나, 공찬이 독립원정대가 되어 만난 독립운동가들의 땀과 피와 삶.</h2>
                    <p>1919년 상하이에서 1945년 충칭까지, 대한민국 임시정부는 남의 땅 중국에서 27년의 세월을 견디어냈습니다. 그러나 우리는 대한민국 임시정부의 업적을 제대도 알지 못합니다. 대한민국 탄생을 위해 독립운동가들이 바친 땀과 피와 삶에 대해선 더 더욱 알지 못합니다. 
                    MBC가 대한민국 임시정부 수립 100주년을 기념해 제작하는 프로그램 &#35;잃어버린 시간을 찾아서&#35;에 김수로, 박찬호, 김동완, 강한나, 공찬이 독립원정대로 참여하였습니다. 우리가 기억해야 하지만 아직 제대로 알지 못하는 독립운동가, 광복군의 하루 하루의 삶을 체험하기 위해 일제강점기 상하이와 충칭으로 갔습니다. 
                    독립원정대원들은 상하이임시정부 사람들이 살았던 집에서 자고, 그분들이 먹었던 음식을 먹었습니다. 생계와 독립자금 마련을 위해 말도 통하지 않았던 곳에서 돈을 벌기 위해 했던 일들을 독립원정대가 직접 해보았습니다. 언제 독립이 될지, 아니 조국이 독립은 되는 것인지 불투명했던 시기에 목숨을 바치겠다고 모였던 광복군의 훈련도 받았습니다. 한 순간도 쉽지가 않았습니다. 일제강점기에 고향의 안락함을 떠나 말도 통하지 않던 중국 땅에서 불확실한 조국 독립을 위해 독립운동가들이 버텨낸 그 하루 하루. 독립원정대원들이 일제강점기 상하이와 충칭으로 떠난 원정의 체험을 통해서 얻은 교훈은, 독립운동가들이 그 하루, 하루를 살아내는 그 일상의 삶이야말로 우리가 진정 기억해야 할 것이라는 점입니다.</p>  
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
                           <td><div class="thumb"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg"></div></td>
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
                                <div class="questionReply">
                                    <div class="questionContentDetail">
                                    <span class="question">Q.</span>
                                          <span>${qnaList.qnaContent} 
                                    </div>
                                    <div class="questionContentReply" >
 										 <span style="color:red">답변을 등록해주세요.</span>

									</div>
                                    
                                </div>
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
                                                       <span style="font-size:7px">${qnaList.qnaContent} 
                                                </div>
                                    <div class="questionContentReply" id="${qnaList.qnaParentNo}">
                                    ${qnaList.qnaContent}
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
                <div class="donate">
                    
                    
                </div>
        </div>
     </div>  
</div>



<script>
   // 연필 누르는 곳
$(".user_modify").on('click', function(){
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


$(".questionContent").on('click',function(){
    if($(this).parent().parent().next().css('display') == 'none'){
        $(this).parent().parent().next().css('display', 'table-row');
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

//    -----------------Qna modify ----------------
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

       
    
    $(".writer_qna_modify").on('click',function(){
        var writer_qna_value = $(this).parent().parent().find('span').text();
        
        $(this).parent().parent().find('span').html('<input type="text" size="50"> <input type="button" value="수정"><input type="button" value="취소">');
        $(this).parent().parent().find('input[type=text]').val(writer_qna_value);
    });
    
    $(".writer_qna_delete").on('click',function(){
        //단체가 삭제버튼 누를때
    });

$(document).on("click","input[value=수정]",function(){
	
	if($(this).attr("class") == 'update_reply_cheer'){ // 대댓글 수정
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
  
	}else if($(this).attr("class") == 'update_cheer'){ // 그냥 댓글 수정
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
   
	}else if($(this).attr("class") == 'update_qna'){ // QnA 수정
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


</script>

<%@ include file="../common/footer.jsp" %>