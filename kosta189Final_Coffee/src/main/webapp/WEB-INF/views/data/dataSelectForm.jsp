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
	
	// 물품데이터 카테고리 검색
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
            		str += "<td class='dataItemNo'>"+data.dataItemNo+"</td><td class='dataItemName'>"+data.dataItemName+"</td><td class='dataItemCategory'>"+data.dataItemCategory+"</td><td class='dataItemPrice'>"+data.dataItemPrice+"</td><td><input type='button' value='선택'/></td>";
            		str += "</tr>"
            	});//for문
        		$("table").html(str);	
            	
            },
            error : function(error){//실패했을 때
               alert(error +"에러발생");               
            }
         });
	}); //검색버튼
	

	
}) //document.ready

//list에 넣기 위한 인덱스
var indexNo = 0;

$(document).on("click","input[value=선택]",function(){
	var str = "";
	str += "<div><input type='text' name='item["+indexNo+"].itemName' value='"+$(this).parent().parent().children(".dataItemName").html()+"'>";
	str += "<input type='text' name='item["+indexNo+"].itemCategory' value='"+$(this).parent().parent().children(".dataItemCategory").html()+"'>";
	str += "<input type='text' name='item["+indexNo+"].itemgoalAmount' value='1'>";
	str += "<input type='text' name='item["+indexNo+"].itemPrice' value='"+$(this).parent().parent().children(".dataItemPrice").html()+"'></div>";
	$(opener.document).find("#itemList").append(str);
	console.log(str);
	indexNo++;
});



</script>
    
</body>
</html>
