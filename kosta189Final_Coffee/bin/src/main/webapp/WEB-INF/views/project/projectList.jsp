<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="project-wrap">
    <div class="project-container">
       <p class="project-title"><span style="font-size:30px;">프로젝트</span></p>
        <div class="project-divider">
            <ul>
                <li class="select">모금중</li>
                <li>모금종료</li>
            </ul>
        </div>
            
        <div class="project-category">
            <div class="category-title"><span>항목</span></div>
            <div class="category-contents">
                <input type="radio" name="category1" value="0">전체
                <input type="radio" name="category1" value="1">금액
                <input type="radio" name="category1" value="2">물품
            </div>
            <div class="category-title"><span>중분류</span></div>
            <div class="category-contents">
                <input type="radio" name="category2" value="0">전체
                <input type="radio" name="category2" value="1">아동
                <input type="radio" name="category2" value="2">성인
                <input type="radio" name="category2" value="3">노인                 
                <input type="radio" name="category2" value="4">동물
                <input type="radio" name="category2" value="5">지역사회
            </div>
            <div class="category-title"><span>소분류</span></div>
            <div class="category-contents">
                <input type="radio" name="category3" value="0">전체
                <input type="radio" name="category3" value="1">교육
                <input type="radio" name="category3" value="2">소녀/소년가장
                <input type="radio" name="category3" value="3">장애인                 
                <input type="radio" name="category3" value="4">질병/희귀
            </div>
            <div>
                <input type="button" value="검색" onclick="submit()">
                <input type="button" value="닫기" onclick="hide()">
            </div>
        </div>
        <div class="project-sort">
            <button>상세검색<i class="fas fa-angle-down"></i></button>
        </div>
        <div class="project-list-wrap">
            <div class="project-list">
                <!-- 리스트 출력 반복문 -->
				<c:forEach var="project" items="${list}">
				 	<div class="project-list-items">
	                	<div hidden="hidden">${project.projectNo}</div>
	                    <div class="project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test2.jpg">
	                    </div>
	                    <div class="project-name"><span>	${project.projectImg}/${project.projectSubject}</span></div>
	                    <div class="progress-wrap"><progress id="progressbar" value="${project.percent}" max="100"></progress></div>
	                    <div class="progress-value-wrap"><span class="progress-value">${project.percent}%</span></div>
	                    <div class="project-collection"><span><fmt:formatNumber value="${project.totalMoney}" type="number"/>/<fmt:formatNumber value="${project.goal}" type="number"/></span></div>
	               	 </div>
				</c:forEach>
            </div>       
        </div>
        <div class="btn-more-div">
            <input align="center" class="btn-more" type="button" value="더보기">
        </div>
    </div>
</div>


<script>  
    /* 상세검색 버튼 토글 */
    function hide(){
        $(".project-category").fadeOut();
    }
    function submit(){
        $(".project-category").submit();
    }
    
    $(".project-category").hide();
    $(".project-sort>button").click(function(){
        $(".project-category").fadeToggle(300);
    })
    
    /* 프로젝트 클릭시 페이지 이동 */
    $(".project-list-items").click(function(){
    	var projectNo = $(this).children().html();
    	$(location).attr('href', '${pageContext.request.contextPath}/project/projectRead?projectNo='+projectNo);
    }); 
</script>

<%@ include file="../common/footer.jsp" %>