<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%
	session.setAttribute("id", "company1");
%>

<%@ include file="../common/header.jsp" %>

<div class="notice-wrap">
   <div class="notice-container">
        <p class="notice-title"><span style="font-size:30px;">공지사항</span></p>
    
        <table class="notice-table">
            <tr style="background-color: #DC287C">
                <td>번호</td>
                <td style="text-align: center">제목</td>
                <td>등록일</td>
                <td>조회</td>
            </tr>
            
            <c:choose>
			    <c:when test="${empty requestScope.list}">
				<tr>
			        <td colspan="5">
			            <p align="center"><b><span style="font-size:9pt;">등록된 공지사항이 없습니다.</span></b></p>
			        </td>
			    </tr>
    		</c:when>
    		<c:otherwise>
			<c:forEach items="${requestScope.list}" var="noticeDTO">
            
            <tr>
                <td>${noticeDTO.noticeNo}</td>
                <td>	<a href="${pageContext.request.contextPath}/notice/noticeRead?noticeNo=${noticeDTO.noticeNo}">
					  ${noticeDTO.noticeTitle}</a></td>
                <td>${noticeDTO.noticeRegdate}</td>
                <td>${noticeDTO.id}</td>
            </tr>
              </c:forEach>
			</c:otherwise>
		    </c:choose>
		    
        </table>
        <div align="center" class="page">
            <table style="display: inline-block;">
                <tr>
                    <th><i class="fas fa-arrow-left"></i></th>
                    <th><a href="#" style="">1</a></th>
                    <th><a href="#" style="">2</a></th>
                    <th><a href="#" style="">3</a></th>
                    <th><a href="#" style="">4</a></th>
                    <th><a href="#" style="">5</a></th>
                    <th><i class="fas fa-arrow-right"></i></th>
                </tr>
            </table>
        </div>
        <div align="center">
            <select style="padding-bottom:5px;padding-top:1px;">
            <option>제목</option>
            <option>내용</option>
            </select>
            <input type="search" class="notice_search" placeholder="검색" style="height:24px;outline">
		<a href="${pageContext.request.contextPath}/notice/noticeInsertForm">글쓰기</a>            
        </div>
        
    </div>
</div>

<%@ include file="../common/footer.jsp" %>
