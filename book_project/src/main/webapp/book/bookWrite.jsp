<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<form>
			<h1> 도서 생성 </h4>
			
			<h3> 도서이름 :</h2>
			<input type="text" id="nameInput"  class=" nameinput form-control" />
			<h3> 저자 :</h2>
			<input type="text" id="writerInput" class=" writerinput form-control" />
			<h3> 출판사 :</h2>
			<input type="text"  class="creatorInput" creatorinput form-control" /></br>
			
			<button onclick="location.href='bookWrite.jsp''" type="button" class="btn btn-primary"> submit </button>
		</form>
	</div>








<script src="/book_project/js/book/bookWrite.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>