<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<%@ include file="common/header.jsp" %>

        <div class="page-move">
        <!-- 컨텐츠 -->
        <div class="index-wrap clearfix"> 
            <div class="main">
                <form>
                    <div class="search-container">
                        <i class="fas fa-search" style="padding-right:10px"></i>
                        <input type="text" class="search" size="50" placeholder=" 검색">
                    </div>
                </form>    

            <!-- 카운트 -->
            <div class="count clearfix">현재 
                <span class="odometer a"></span>건의 프로젝트를 
                <span class="odometer b"></span>명의 개인, 
                <span class="odometer c"></span>개의 단체와 함께 하고 있습니다.
            </div>
                                                
            <div class="title-wrap">
               <div class="index-project-title">
                <h2>인기 프로젝트</h2>
                </div>
            </div>
            <div class="index-project-wrap">
                <div class="index-project">
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg"></div>
                       <div class="index-project-name"><span>원빈 도와주세요!</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="50" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">0%</span></div>
                       <div class="index-project-collection"><span>1,300,000원</span></div>
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test2.jpg"></div>
                       <div class="index-project-name"><span>이해인 함께해요♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="73" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">0%</span></div>
                       <div class="index-project-collection"><span>3,200,000원</span></div> 
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test3.jpg"></div>
                       <div class="index-project-name"><span>조인성 드루왕♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="40" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">40%</span></div>
                       <div class="index-project-collection"><span>4,500,000원</span></div> 
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test4.jpg"></div>
                       <div class="index-project-name"><span>김성오 깜빡이 좀 키고 드루와라♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="10" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">10%</span></div>
                       <div class="index-project-collection"><span>10,500,000원</span></div> 
                   </div>
               </div>
            </div>
            
            
            
            <div class="title-wrap">
               <div class="index-project-title">
                <h2>마감임박 프로젝트</h2>
                </div>
            </div>
            <div class="index-project-wrap">
                <div class="index-project">
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg"></div>
                       <div class="index-project-name"><span>원빈 도와주세요!</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="30" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">30%</span></div>
                       <div class="index-project-collection"><span>1,300,000원</span></div>
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test2.jpg"></div>
                       <div class="index-project-name"><span>이해인 함께해요♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="55" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">55%</span></div>
                       <div class="index-project-collection"><span>3,200,000원</span></div> 
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test3.jpg"></div>
                       <div class="index-project-name"><span>조인성 드루왕♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="65" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">65%</span></div>
                       <div class="index-project-collection"><span>4,500,000원</span></div> 
                   </div>
                   
                   <div class="index-project-items">
                       <div class="index-project-img"><img src="${pageContext.request.contextPath}/resources/images/thumbs/test4.jpg"></div>
                       <div class="index-project-name"><span>김성오 깜빡이 좀 키고 드루와라♡</span></div>
                       <div class="progress-wrap"><progress class="progressbar" value="90" max="100"></progress></div>
                       <div class="progress-value-wrap"><span class="progress-value">90%</span></div>
                       <div class="index-project-collection"><span>10,500,000원</span></div> 
                   </div>
               </div>
            </div>
            
            
            
            </div>
        </div>
        </div>


<%@ include file="common/footer.jsp" %>