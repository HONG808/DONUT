<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <li class="select sidebar-3"><a href="${pageContext.request.contextPath}/member/memberReceipt">영수증관리</a></li>
                    <li class="sidebar-4"><a href="${pageContext.request.contextPath}/member/memberQnA">Q&A</a></li>
                    <li class="sidebar-5"><a href="${pageContext.request.contextPath}/member/memberCheer">내 응원</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">영수증관리</span>
           </p>
           
            		<table>
                        <tr>
                            <th>기부단체</th>
                            <th>프로젝트</th>
                            <th>기부금액</th>
                            <th>날짜</th>
                        </tr>
                        
                        <c:forEach var="memberReceipt" items="${giveDTO}">
                        <tr>
                            <td>${memberReceipt.itemName}</td>
                            <td>${projectItem.itemPrice}</td>
                            <td>${projectItem.itemAmount}/${projectItem.goalAmount}</td>
                            <td>${projectItem.itemPrice * projectItem.itemAmount}</td>
                        
                        </tr>
                        </c:forEach>
                    </table>
        </div>
   </div>
</div>

<%@ include file="../common/footer.jsp" %>