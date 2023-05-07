<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<div class="ftco-section admin-list">
   <div class="container">
      <div class="justify-content-center mb-3 pb-3">
         <div class="heading-section text-center">
            <h2>글로벌널리지 강의정보 리스트</h2>
         </div>
      </div>
      <a href="/BoardRegister" class="btn btn-primary mb-2">게시글 작성</a>
      <div class="bd-example-snippet bd-code-snippet">
         <div class="bd-example">
            <table class="table table-hover table-bordered">
               <thead>
                  <tr>
                     <th scope="col" style="width:90px;">제목</th>
                     <th scope="col" style="width:90px;">날짜정보</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach items="${BoardList}" var="board">
                     <tr>
                        <td><a href="/BoardDetail/${board.id}">${board.title}</a></td>
                        <td>${board.date }</td>
                                          
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</div>
