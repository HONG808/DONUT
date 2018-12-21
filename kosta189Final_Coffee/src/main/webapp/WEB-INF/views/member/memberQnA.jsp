<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="mypage-wrap">
   <div class="mypage-container">
        <div class="mypage-sidebar">
                <div class="mypage-sidebar-title">
                    <span><b>마이페이지</b></span>
                    <span style="font-size:18px;font-weight: 600;">mypage</span>
                </div>
                <ul>
                    <li class="sidebar-1"><a href="${pageContext.request.contextPath}/member/memberMypage">회원정보수정</a></li>
                    <li class="sidebar-2"><a href="${pageContext.request.contextPath}/member/memberGive">내 후원</a></li>
                    <li class="sidebar-3"><a href="${pageContext.request.contextPath}/member/memberReceipt">영수증관리</a></li>
                    <li class="select sidebar-4"><a href="${pageContext.request.contextPath}/member/memberQnA">Q&A</a></li>
                    <li class="sidebar-5"><a href="${pageContext.request.contextPath}/member/memberCheer">내 응원</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">Q&A</span>
           </p>
    
    <div class="qna">
                    <table id="questionTable" style="background-color:white;">

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
                            </td>
                            <td> ${qnaList.id} </td>
                            <td> ${qnaList.qnaRegdate} </td>
                        </tr>
                    
                        <c:choose>
                         <c:when test="${qnaList.qnaNotify==0}"><!-- 답변없는 자식글 -->
                        <tr class="questionTr">
                           <td colspan="4">
                                <div class="questionReply">
                                    <div class="questionContentDetail">
                                    <span class="question">Q.</span>
                                          <span>${qnaList.qnaContent} 
                                    </div>
                                     <div class="questionContentReply" >
		                                <span style="color:red">등록된 답변이 없습니다.</span>
		                        	   </div>
                                </div>
                            </td>
                        </tr>
                        </c:when>
                        </c:choose>
                        </c:when>
                       </c:choose>
                                       <c:choose>
                                     <c:when test="${qnaList.qnaParentNo!=0}"> <!-- 답변 자식글 -->
                                    <tr class="questionTr" >
                                       <td colspan="4">
                                            <div class="questionReply" >
                                                <div class="questionContentDetail">
                                                <span>Q.</span>
                                                       <span class="myquestion">${qnaList.qnaContent} 
                                                </div>
                                    <div class="questionContentReply" id="${qnaList.qnaParentNo}">
                                    <span >${qnaList.qnaContent}</span>
                                       <div class="writer_qna_reply">
                                       <input type=hidden name="qnaParentNo" value="${qnaList.qnaParentNo}">
                                        <input type=hidden name="qnaNo" value="${qnaList.qnaNo}">
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
                    
                </div>


        </div>
   </div>
</div>

<script>

$(".questionContent").on('click',function(){

	
    if($(this).parent().parent().next().css('display') == 'none'){
        $(this).parent().parent().next().css('display', 'table-row');
    	var myquestion = $(this).children().text();
    	$(this).parent().parent().next().find('span.myquestion').text(myquestion);
    }else if($(this).parent().parent().next().css('display') == 'table-row'){
        $(this).parent().parent().next().css('display', 'none');
    }


})


</script>
<%@ include file="../common/footer.jsp" %>