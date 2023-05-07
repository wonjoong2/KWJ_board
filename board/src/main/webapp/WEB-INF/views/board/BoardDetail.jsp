<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<div class="ftco-section">
   <div class="container">
      <div class="justify-content-center mb-3 pb-3">
         <div class="heading-section text-center">
            <h2>게시글 상세 페이지</h2>
         </div>
      </div>
      
         <div class="row">
            <div class="col-md-12">
               <div class="form-group">
                  <label for="id">ID</label> <input type="text" class="form-control" id="id" name="id" value="${board.id}" readonly>
               </div>
            </div>
            <div class="col-md-12">
               <div class="form-group">
                  <label for="title">제목</label> <input type="text" class="form-control" id="title" name="title" value="${board.title }" readonly>
               </div>
            </div>      
             <div class="col-md-12">
               <div class="form-group">
                  <label for="content">본문</label> <textarea cols="40" rows="10" class="form-control" id="content" name="content" readonly>${board.content }</textarea>
               </div>
            </div> 
         </div>
         
         
         연관 게시글
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
                  <c:forEach items="${RelatedBoard}" var="board">
                     <tr>
                        <td><a href="/BoardDetail/${board.title}">${board.title}</a></td>
                        <td>${board.date }</td>
                                          
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>
      
      
      
         <div class="row justify-content-center">
         	<div class="col-xl-3">
				 <div class="row mt-2">			
					<div class="col-md-12">
						<a href="/" class="btn btn-secondary py-3 px-5 w-100">목록</a>
					</div>
				 </div>
			 </div>
		 </div>

   </div>
</div>
