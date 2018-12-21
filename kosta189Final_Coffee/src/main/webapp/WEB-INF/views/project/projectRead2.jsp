<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8");%>

<% 
	session.setAttribute("id", "test5");
	session.setAttribute("name", "testname1");
	session.setAttribute("email", "eee@eee.com");
	session.setAttribute("phone", "01010000000");
	
	request.setAttribute("projectNo", 15);
	request.setAttribute("projectSubject", "위안부 문제");
	request.setAttribute("moneyOrItem", 2); //물품
	
	request.setAttribute("projectItemNo0", 1);
	request.setAttribute("projectItemNo1", 2);
	request.setAttribute("projectItemName0", "도시락 용기");
	request.setAttribute("projectItemName1", "겨울돕바");
	request.setAttribute("projectItemPrice0", 1000);
	request.setAttribute("projectItemPrice1", 2000);
	
%>

</head>
<body>

	<h1>projectRead</h1>
	<h2>물품기부일때</h2><p>
	
	<!-- 합칠때 물품이 몇 개인지해서 밑에 form forEach문 돌릴 것 -->
	<c:set var = "index" value = "1" />
	
	<form method="get" action='${pageContext.request.contextPath}/payment/paymentGiveSetting'>
		<input type="hidden" name='projectNo' value = '${projectNo}'/>
		<input type="hidden" name='projectSubject' value = '${projectSubject}'/>
		<input type="hidden" name='id' value = '${id}'/>
		<input type="hidden" name='moneyOrItem' value = '${moneyOrItem}'/>

		<input type="hidden" name="giveItem[0].giveItemName" value = '${projectItemName0}'/><!-- setGiveItem().setGiveItemName() -->
		<input type="hidden" name="giveItem[0].giveItemPrice" value = '${projectItemPrice0}'/>
		${projectItemName0} <input type="text" name="giveItem[0].giveItemAmount" value="0"/> <br/><!-- getGiveItem()로 giveItem 호출 후에 setGiveItemAmount(String giveItemAmount)을 호출함 -->

		<input type="hidden" name="giveItem[1].giveItemName" value = '${projectItemName1}'/>
		<input type="hidden" name="giveItem[1].giveItemPrice" value = '${projectItemPrice1}'/>
		${projectItemName1} <input type="text" name="giveItem[1].giveItemAmount" value="0"/> <br/>	
		
		<input type='submit' value='기부하기' />

	</form>
	

</body>
</html>