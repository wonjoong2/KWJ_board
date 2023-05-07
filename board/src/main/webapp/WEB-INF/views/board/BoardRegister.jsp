<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<div class="ftco-section">
	<div class="container">
		<div class="justify-content-center mb-3 pb-3">
			<div class="heading-section text-center">
				<h2>게시글 등록 페이지</h2>

			</div>
		</div>
		<form action="/BoardRegister" method="post">
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label for="id">ID</label> <input type="text" class="form-control"
							id="id" name="id" required>
					</div>
				</div>

				<div class="col-md-12">
					<div class="form-group">
						<label for="title">제목</label> <input type="text"
							class="form-control" id="title" name="title" required>
					</div>
				</div>

				<br />

				<div class="col-md-12">
					<div class="form-group">
						<label for="content">본문</label>
						<textarea cols="40" rows="10" class="form-control" id="content"
							name="content" required></textarea>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-xl-7">
					<div class="row mt-2">
						<div class="col-md-4">
							<a href="/" class="btn btn-secondary py-3 px-5 w-100">목록</a>
						</div>
						<div class="col-md-4">
							<input type="submit" class="btn btn-primary py-3 px-5 w-100"
								value="게시글 등록">
						</div>
						<div class="col-md-4">
							<input type="reset" class="btn btn-danger py-3 px-5 w-100"
								value="다시 입력">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>