<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>noticeUpdateForm</h1>

<!-- 
	private int noticeNo;
	private String id;
	private String noticeTitle;
	private String noticeContent;
	private String noticeRegdate; 
	
	-->
	
<form name=noticeUpdateForm method=post action="${pageContext.request.contextPath}/notice/noticeUpdate" >
    <input type='hidden' name='noticeNo' value="${noticeDTO.noticeNo}">
<table align="center" cellpadding="5" cellspacing="2" width="600" border='1'>
    <tr>
        <td width="1220" height="20" colspan="4" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b>
            	공지사항 수정하기</b></font></p>
        </td>
    </tr>
      <tr>
        <td width="100" height="20" >
            <p align="right"><b><span style="font-size:9pt;">공지사항번호</span></b></p>
        </td>
        <td width="450" height="20" colspan="3">
        	<span style="font-size:9pt;"><b>${requestScope.noticeDTO.noticeNo}</b></span>
        </td>
    </tr>
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">제목</span></b></p>
        </td>
        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<input type=text name="noticeTitle" size="30"
		 value="${requestScope.noticeDTO.noticeTitle}"></span></b></td>
    </tr>
    
    <tr>
        <td width="150" height="20" >
            <p align="right"><b><span style="font-size:9pt;">내 용</span></b></p>
        </td>
        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<textarea name="noticeContent" cols="50" rows="10">${requestScope.noticeDTO.noticeContent}</textarea></span></b></td>
    </tr>
    
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;">
		<input type="submit" value="수정완료"> </span></b></td>
    </tr>
</table>


</form>
<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="${pageContext.request.contextPath}/notice/noticeList">메인으로 돌아가기</a>&gt;</span></div>





</body>
</html>