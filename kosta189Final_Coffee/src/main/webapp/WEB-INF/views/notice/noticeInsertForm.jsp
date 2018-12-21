<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H1>noticeInsertForm</H1>

<form name="noticeInsertForm" method="post" action="${pageContext.request.contextPath}/notice/noticeInsert" onSubmit='return checkValid()' enctype="multipart/form-data">

<table align="center" cellpadding="5" cellspacing="2" width="600" border="1" >

    <tr>
        <td width="1220" height="20" colspan="2" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b> 공지사항 등록 </b></font></p>
        </td>
    </tr>
  
    
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">제목</span></b></p>
        </td>
        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<input type=text name="noticeTitle" size="50"></span></b></td>
    </tr>
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">내용</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<textarea name="noticeContent" cols="50" rows="10"></textarea></span></b></td>
    </tr>
    
    
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;"><input type=submit value=등록완료> 
        </span></b></td>
    </tr>
</table>

<input type="hidden" name="id" value="${id}">
</form>

<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="${pageContext.request.contextPath}/notice/noticeList">메인화면으로 돌아가기</a>&gt;</span></div>


</body>
</html>