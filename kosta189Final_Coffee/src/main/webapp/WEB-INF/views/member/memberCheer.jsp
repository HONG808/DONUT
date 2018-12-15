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
                    <li class="sidebar-4"><a href="${pageContext.request.contextPath}/member/memberQnA">Q&A</a></li>
                    <li class="select sidebar-5"><a href="${pageContext.request.contextPath}/member/memberCheer">내 응원</a></li>
                </ul>
        </div>
        <div class="mypage-contents">
           <p align="center" class="mypage-title">
               <span style="font-size:30px;color:black;">내 응원</span>
           </p>
            <div class="cheer">
                    <table>
                        <tr>
                            <td style="width:5%;">
                                <div class="thumb"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg"></div>
                            </td>
                            <td style="width:10%;">kdh8909</td>
                            <td style="width:75%">가즈아~~~!ㅁㄴㄻㄴㄻㄴㄻㄴㄻㄴ <span> <i class="fas fa-angle-down"></i> <a href="#">답글보기</a></span></td>
                            <th style="width:20%;font-weight:300;">2018-12-10 19:23</th>
                        </tr>
                        <tr>
                            <td style="width:5%;">
                                <div class="thumb"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test2.jpg"></div>
                            </td>
                            <td style="width:10%;">abc1235</td>
                            <td style="width:75%">응원합니다~~~!<span> <i class="fas fa-angle-down"></i> <a href="#">답글보기</a></span></td>
                            <th style="width:20%;font-weight:300;">2018-12-10 19:23</th>
                        </tr>
                        <tr>
                            <td style="width:5%;">
                                <div class="thumb"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test3.jpg"></div>
                            </td>
                            <td style="width:10%;">jang</td>
                            <td style="width:75%">ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ~~~!<span> <i class="fas fa-angle-down"></i> <a href="#">답글보기</a></span></td>
                            <th style="width:20%;font-weight:300;">2018-12-10 19:23</th>
                        </tr>
                    </table>
                    <div align="center" style="margin-top:20px;">
                        <textarea style="width:70%;height:35px;resize:none;padding:10px;overflow:hidden;position: relative;" maxlength="50" placeholder="50자 이내로 응원을 남겨주세요."></textarea> 
                    </div>
                    <div>
                        <input type="button" style="width:70px;height:40px;font-size:15px;background-color:black;color:white;border-radius: 10px;border:0;outline-width: 0;cursor: pointer; position: absolute;right:22%" value="응원하기">
                    </div>
                </div>
        </div>
   </div>
</div>

<%@ include file="../common/footer.jsp" %>