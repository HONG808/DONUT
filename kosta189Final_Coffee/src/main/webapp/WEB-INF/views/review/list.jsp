<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">



<table align="center" border="0" cellpadding="5" cellspacing="2" width="100%" bordercolordark="white" bordercolorlight="black">

	<colgroup>
		<col width="15%"/>
		<col width="30%"/>
		<col width="16%"/>
		<col width="16%"/>
		<col width="7%"/>
		<col width="7%"/>
		<col width="7%"/>
	</colgroup>
	<tr>
        <td bgcolor="#00cc00">
            <p align="center">
            <font color="white"><b><span style="font-size:9pt;">후기번호</span></b></font></p>
        </td>
        <td bgcolor="#00cc00">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">후기 제목</span></b></font></p>
        </td>
        <td bgcolor="#00cc00">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">작성일</span></b></font></p>
        </td>
        <td bgcolor="#00cc00">
            <p align="center"><font color="white"><b><span style="font-size:9pt;">날짜</span></b></font></p>
        </td>
        
     
    </tr>
    <c:choose>
    <c:when test="${empty requestScope.review}">
	<tr>
        <td colspan="5">
            <p align="center"><b><span style="font-size:9pt;">등록된 review가 없습니다.</span></b></p>
            <a href="${pageContext.request.contextPath}/review/reviewInsertForm">후기 등록하기</a>
        </td>
    </tr>
    </c:when>
    <c:otherwise>\
	
		    <tr onmouseover="this.style.background='#eaeaea'" onmouseout="this.style.background='white'">
		       
		        <td bgcolor="">
					<p><span style="font-size:9pt;">
					<a href="${pageContext.request.contextPath}/review/reviewRead/${requestScope.review.projectNo}">
					  ${requestScope.review.projectNo}
					</a>
					</span></p>
		        </td>
		         <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
		            ${requestScope.review.id}</span></p>
		        </td>
		      
		        <td bgcolor="">
		            <p align="center"><span style="font-size:9pt;">
		            ${requestScope.review.reviewRegdate}</span></p>
		        </td>
		    
		        
		    </tr>
   
	</c:otherwise>
    </c:choose>
</table>
<hr>
<div align=right>
















