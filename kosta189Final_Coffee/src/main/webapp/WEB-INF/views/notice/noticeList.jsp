<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../common/header.jsp" %>

<div class="notice-wrap">
   <div class="notice-container">
        <p class="notice-title"><span style="font-size:30px;">공지사항</span></p>
    
        <table class="notice-table">
            <tr style="background-color: #DC287C">
                <td>번호</td>
                <td style="text-align: center">제목</td>
                <td>등록일</td>
                <td>조회</td>
            </tr>
            <tr>
                <td>1</td>
                <td>제목111111</td>
                <td>2018.08.27</td>
                <td>1</td>
            </tr>
            <tr>
                <td>2</td>
                <td>제목22222</td>
                <td>2018.09.30</td>
                <td>1</td>
            </tr>
            <tr>
                <td>3</td>
                <td>제목333</td>
                <td>2018.10.30</td>
                <td>1</td>
            </tr>
            <tr>
                <td>4</td>
                <td>제목44</td>
                <td>2018.11.04</td>
                <td>1</td>
            </tr>
            <tr>
                <td>5</td>
                <td>제목55222</td>
                <td>2018.12.25</td>
                <td>1</td>
            </tr>
        </table>
        <div align="center" class="page">
            <table style="display: inline-block;">
                <tr>
                    <th><i class="fas fa-arrow-left"></i></th>
                    <th><a href="#" style="">1</a></th>
                    <th><a href="#" style="">2</a></th>
                    <th><a href="#" style="">3</a></th>
                    <th><a href="#" style="">4</a></th>
                    <th><a href="#" style="">5</a></th>
                    <th><i class="fas fa-arrow-right"></i></th>
                </tr>
            </table>
        </div>
        <div align="center">
            <select style="padding-bottom:5px;padding-top:1px;">
            <option>제목</option>
            <option>내용</option>
            </select>
            <input type="search" class="notice_search" placeholder="검색" style="height:24px;outline">
        </div>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>
