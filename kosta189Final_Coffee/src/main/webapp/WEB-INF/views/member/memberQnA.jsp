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
                    <table>
                        <tr>
                            <th style="width:10%">상태</th>
                            <th style="width:75%">문의/답변</th>
                            <th style="width:5%">작성자</th>
                            <th style="width:10%">작성일</th>
                        </tr>
                        <tr>
                            <th style="width:10%;font-weight: 300;">미답변</th>
                            <td style="width:75%"><a href="#">질문있습니다.</a></td>
                            <td style="width:5%">jang8253</td>
                            <th style="width:10%;font-weight: 300;">2018.12.11 09:41</th>
                        </tr>
                        <tr>
                            <th style="width:10%;font-weight: 300;">답변</th>
                            <td style="width:75%"><a href="#">영수증 처리에 대해서</a></td>
                            <td style="width:5%">kdh8909</td>
                            <th style="width:10%;font-weight: 300;">2018.12.11 08:32</th> 
                        </tr>
                    </table>
             </div>
        </div>
   </div>
</div>

<%@ include file="../common/footer.jsp" %>