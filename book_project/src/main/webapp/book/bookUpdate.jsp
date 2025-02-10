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
			<h1> 도서 수정 </h4>
			
			<h3> 도서명 :</h2>
			<input type="text" class=" titleinput form-control" />
			<h3> 저자 :</h2>
			<input type="text" class=" titleinput form-control" />
			<h3> 출판사 :</h2>
			<input type="text" class=" titleinput form-control" /></br>
			
			<button onclick="onWrite()" type="button" class="btn btn-primary"> 수정 </button>
			<button onclick="onWrite()" type="button" class="btn btn-primary"> 삭제 </button>
		</form>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>