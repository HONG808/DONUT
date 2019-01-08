<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp"%>

<div class="mypage-wrap" data-aos="fade-in">
	<div class="mypage-container">
		<div class="mypage-sidebar">
			<div class="mypage-sidebar-title">
				<span><b>마이페이지</b></span> <span
					style="font-size: 18px; font-weight: 600;">mypage</span>
			</div>
			<ul>
				<li class="sidebar-1"><a
					href="${pageContext.request.contextPath}/member/memberMypage">회원정보수정</a></li>
				<li class="sidebar-2"><a
					href="${pageContext.request.contextPath}/member/memberGive">내
						후원</a></li>
				<li class="select sidebar-3"><a
					href="${pageContext.request.contextPath}/member/memberReceipt">영수증관리</a></li>
				<li class="sidebar-4"><a
					href="${pageContext.request.contextPath}/member/memberQnA">Q&A</a>
					<c:choose>
						<c:when test="${qnaNewAlarm==1}">
							<i class="fa fa-bell faa-tada animated" id="alarm"
								style="color: #FF607F"></i>
						</c:when>
					</c:choose></li>
				<li class="sidebar-5"><a
					href="${pageContext.request.contextPath}/member/memberCheer">내
						응원</a> <c:choose>
						<c:when test="${newAlarm==1}">
							<i class="fa fa-bell faa-tada animated" id="alarm"
								style="color: #FF607F"></i>
						</c:when>
					</c:choose></li>
				<li class="sidebar-6"><a
					href="${pageContext.request.contextPath}/member/memberFavorite">즐겨찾기</a></li>
			</ul>
		</div>


		<div class="mypage-contents">
			<p align="center" class="mypage-title">
				<span style="font-size: 30px; color: black;">즐겨찾기</span>
			</p>
			<div class="mypage-wrap" data-aos="fade-in">
				<div class="favorite-container">
					<table id="listTable" class="favorite-table">
						<tr style="background-color: #DC287C">
							<td>기부단체</td>
							<td style="text-align: center">기부프로젝트</td>
							<td>기부금액</td>
							<td>기부일자</td>
							<td>결제영수증</td>
						</tr>
						<c:choose>
							<c:when test="${empty requestScope.receiptList}">
								<tr>
									<td colspan="4">
										<p align="center">
											<b><span style="font-size: 9pt;">list가 존재하지 않습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${requestScope.receiptList}" var="item">
									<tr>
										<td>
											${item.project.id}
										</td>
										<td>
											<p align="center">
												<span style="font-size: 9pt;">
													<a href="${pageContext.request.contextPath}/project/projectRead?projectNo=${item.project.projectNo}">${item.project.projectSubject}</a> </span>
											</p>
										</td>

										<td>
											<p align="center">
												<span style="font-size: 9pt;">
													${item.giveMoney}</span>
											</p>
										</td>
										<td>
											<p align="center">
												<span style="font-size: 9pt;"> 
													${item.giveRegdate}
												</span>
											</p>
										</td>
										
										<td>
											<p align="center">
												<span style="font-size: 9pt;"> 
													<a href="${item.payment.receiptURL}">결제확인</a>
												</span>
											</p>
										</td>
										

									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
					
					<input type="button" value="전체영수증출력" style="margin-left:850px;">
				</div>
			</div>
					
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>
<script>
	$(function(){
		$("input[value=전체영수증출력]").on("click",function(){
			window.open("${pageContext.request.contextPath}/member/receipt",
					"MsgWindow",
					"width=850,height=500");
		});
	})
</script>