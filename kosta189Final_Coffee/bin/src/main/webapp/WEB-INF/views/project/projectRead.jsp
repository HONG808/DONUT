<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="project-detail-wrap">
    <div class="cover" style="background-image: url(${pageContext.request.contextPath}/resources/images/thumbs/test1.jpg);">
        <div class="cover-title">
            <div class="cover-status">모금중</div>
            <span><b>${projectDTO.projectSubject}</b></span>
            <div class="cover-subtitle">
                <span>${projectDTO.id}</span>
            </div>
            <div class="add-favorite" style="display:inline-block;cursor: pointer"><span style="color:white;background-color: black;border-radius: 5px;padding: 5px;opacity:0.6;font-size:16px;"><i class="far fa-star" style="color:#F9FC0B;font-size:14px;"></i>즐겨찾기</span></div>
        </div>
        
    </div>
    <div class="project-detail-container">
            <div class="header">
                
                <div class="header-donation" style="display: inline-block">
                    <table class="project-detail-table">
                       <tr>
                           <td><b>목표금액</b></td>
                           <td><fmt:formatNumber type="number" value="${projectDTO.goal}"/>원</td>
                       </tr>
                       <tr>
                           <td><b>모인금액</b></td>
                           <td style="color:#DC287C"><fmt:formatNumber type="number" value="${projectDTO.totalMoney}"/>원</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 등록일</b></td>
                           <td>${projectDTO.projectRegdate}</td>
                       </tr>
                        <tr>
                           <td><b>프로젝트 마감일</b></td>
                           <td style="color:#DC287C">${projectDTO.projectEnd}</td>
                        </tr>
                       <tr>
                           <td><b>참여 인원</b></td>
                           <td>${projectDTO.givePerson}</td>
                       </tr>  
                       <tr>
                           <td><b>카테고리</b></td>
                           <td>${projectDTO.category2}</td>
                       </tr>
                   </table> 
                    <div class="progress-wrap">
                        <progress class="progressbar" value="${projectDTO.percent}" max="100"></progress>
                        <div class="progress-value-wrap">
                            <span class="progress-value">${projectDTO.percent}%</span>
                        </div>
                    </div>
                    
                </div>    
         </div>
        
        <div class="project-detail-main clearfix">
            
                <div class="project-detail-tabs">   
                    <ul>
                        <li class="select" id="story"><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                <div class="story" style="margin:50px auto;width:70%;line-height: 30px;">
                   	${projectDTO.story}   
                   	${projectDTO.projectImg}
                </div>
                
                
                <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li class="select" id="cheer"><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                
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
                
            
            
                <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li class="select" id="qna"><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                
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
                
                
               <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li class="select" id="review"><a href="#review">후기</a></li>
                        <li><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                
                <div class="review">
                    <table>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <td>원빈 1차 모금 후기</td>
                            <th>2018.12.10 17:34</th>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td>원빈 2차 모금 후기</td>
                            <th>2018.12.11 12:53</th>
                        </tr>
                    </table>
                </div>
                
                
                <div class="project-detail-tabs">   
                    <ul>
                        <li><a href="#story">스토리</a></li>
                        <li><a href="#cheer">응원</a></li>
                        <li><a href="#qna">Q&A</a></li>
                        <li><a href="#review">후기</a></li>
                        <li class="select" id="donate"><a href="#donate">기부하기</a></li>
                    </ul>
                </div>
                <div class="donate">
                    
                    
                    
                    
                </div>
        </div>
     </div>  
</div>



<script>
   $(function(){
       var progressbar = $(".progressbar"),
				max = progressbar.attr('max'),
//				time = (10/max)*5,
                initValue = 0,
		        value = progressbar.val();

		    var loading = function() {
		        initValue += 1;
		        addValue = progressbar.val(initValue);

                progressbar.next().children().html(initValue + '%');
//		        $(".progress-value").html(initValue + '%');

		        if (initValue == value) {
		            clearInterval(animate);
		        }
		    };

		    var animate = setInterval(function() {
		        loading();
		    }, 10);
      })  
       
       
    $(function(){
         var progressbar = $(".goods-progressbar"),
				max = progressbar.attr('max'),
//				time = (10/max)*5,
                initValue = 0,
		        value = progressbar.val();

		    var loading = function() {
		        initValue += 1;
		        addValue = progressbar.val(initValue);

		        progressbar.next().children().html(initValue + '%');
//                $(".progress-value").html(initValue + '%');

		        if (initValue == value) {
		            clearInterval(animate);
		        }
		    };

		    var animate = setInterval(function() {
		        loading();
		    }, 10);
    })
      
    
   
$(function(){
  // Add smooth scrolling to all links
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
});
</script>

<%@ include file="../common/footer.jsp" %>