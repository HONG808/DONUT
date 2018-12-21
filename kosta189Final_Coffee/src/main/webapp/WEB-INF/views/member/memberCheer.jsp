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
                    <li class="sidebar-4"><a href="${pageContext.request.contextPath}/member/memberQnA">Q&A</a></li>
                    <li class="select sidebar-5"><a href="${pageContext.request.contextPath}/member/memberCheer">내 응원</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">내 응원</span>
           </p>
            <div class="cheer">
                    <table style="background-color:white;">
                     <c:choose>
                    <c:when test="${fn:length(cheerList) == 0}">
                            <tr>
                                <td colspan="3" align="center">
                                    조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach var="boardList" items="${cheerList}" varStatus="status">
	                   		 <c:choose>
	                   		 <c:when test="${boardList.cheerParentNo==0}"><!-- 부모글 -->
                        <tr>
                        	<td style="font-size:20px;color:gray;">${boardList.projectNo}</td>
                            <td style="width:90%"><span>${boardList.cheerContent}</span>
                             <div class="replyRead">댓글<i class="fas fa-angle-down"></i></div>
                                <div class="replyContent"></div></span>
                                </td>
                            <th style="width:20%;font-weight:300;">${boardList.cheerRegdate}</th>
                        </tr>
                        
                        <c:choose>
                        <c:when test="${boardList.cheerNotify==0}"><!-- ★대댓글이 없습니다. -->
                         <tr class="cheerTr" id="a">
                            <td colspan="4">
                                <div class="cheerReply"> 등록된 답변이 없습니다. </div>
                                </div>
                            </td>
                        </tr>
                        </c:when>
                        </c:choose>
                        </c:when>
                        <c:when test="${boardList.cheerParentNo!=0}"><!-- 자식글 -->
                        <tr class="cheerTr" id="a">
                            <td colspan="4">
                                <div class="cheerReply"> ${boardList.cheerContent}</div>
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
$(".replyRead").on('click', function(){
    if($(this).parent().parent().next().css('display') == 'none'){
        $(this).html('닫기<i class="fas fa-angle-up">');
        $(this).parent().parent().next().css('display', 'table-row');
    }else if($(this).parent().parent().next().css('display') == 'table-row'){
        $(this).html('열기<i class="fas fa-angle-down">');
        $(this).parent().parent().next().css('display', 'none');
    }
})

</script>
<%@ include file="../common/footer.jsp" %>