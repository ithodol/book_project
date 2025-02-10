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

<div class="container"> <!-- container 부트스트랩 클래스  -->
		
		
		 
		
		<table class="table boardlist"> <!--  table 부트스트랩 클래스 -->
			<thead>
				<tr>
					<th> 책번호 </th>
					<th> 도서명 </th>
					<th> 저자 </th>
					<th> 출판사 </th>
					
				</tr>
					
				
			</thead>
			<tbody>
				
				<tr>
					<th> 21 </th>
					<th> <a href="#">사피엔스3</a> </th>
					<th> 호모 </th>
					<th> 출판사 </th>
					<th><button type="button" class="btn btn-primary" href='#'>삭제하기</button></th>	
				</tr>
				
				<tr>
					<th> 21 </th>
					<th> <a href="#">사피엔스3</a></th>
					<th> 호모 </th>
					<th> 출판사 </th>
					<th><button type="button" class="btn btn-primary">삭제하기</button></th>	
				</tr>
				
				<tr>
					<th> 21 </th>
					<th> <a href="#">사피엔스3</a> </th>
					<th> 호모 </th>
					<th> 출판사 </th>
					<th><button type="button" class="btn btn-primary">삭제하기</button></th>	
				</tr>
			
		
			</tbody>
		</table>
		<button onclick="location.href='bookWrite.jsp'" type="button" class="btn btn-primary" > 글작성 </button>
	</div>
	
	 

<script src="/book_project/js/book/bookList.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>