<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        .item-search-wrap{
            width:400px;
            height:400px;
            margin: auto;
        }
        .item-search-wrap hr{
            border: 2px solid lightgray;
        }
        .item-search-subject {
            margin-top:30px; 
            height:50px;
            width:100%;
        }
        .item-search-list{
            margin-top:30px; 
            border:1px solid black;
            height: 200px;
        }
        .item-search-searchBox{
            padding-top:20px;
            width:100%;
            height: 100px;
            background-color : lightblue;
        }
        
    </style>
    <!-- script -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    
</head>
<body>
   
<div class="item-search-wrap">
    <div class="item-search-subject">
         <span>물품검색</span>
         <hr>
    </div>
    <div class="item-search-main">
        <div class="item-search-text">
            <span>검색하실 물품의 카테고리를 입력해주세요</span>    
        </div>
        <div class="item-search-searchBox">
            <span>카테고리</span>
	            <select name="dataCategory">
	            	<option value="0">카테고리를 선택해주세요</option>
		            <c:forEach var="data" items="${list}">
		            	<option value="${data}">${data}</option>
		            </c:forEach>
	            </select>
            <input type="button" value="검색">
        </div>
        <div class="item-search-list">
				<table>리스트출력</table>            
        </div>
    </div>
</div>

<script>
$(function(){
	
	$("input[value=검색]").on("click",function(){
		var dataCategory = $("select[name=dataCategory]").val();
		
		if(dataCategory == "0") {
			alert("카테고리를 선택 후 검색해주세요");
			return;
		}

	    $.ajax({
            url : "dataSelectAll?dataCategory="+dataCategory, 
            type : "get", 
            success : function(result){
            	var str = "";
            	$.each(result, function(index,data){
            		str += "<tr>";
            		str += "<td>"+data.dataItemNo+"</td><td>"+data.dataItemName+"</td><td>"+data.dataItemCategory+"</td><td>"+data.dataItemPrice+"</td>";
            		str += "</td>"
            	});//for문
            	
        		$("table").html(str);	
            },
            error : function(error){//실패했을 때
               alert(error +"에러발생");               
            }
         });

		
		
	}); //검색버튼
	
}) //document.ready
</script>
    
</body>
</html>
