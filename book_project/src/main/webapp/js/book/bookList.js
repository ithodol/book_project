console.log("확인");



const findall = ( ) => {


	// 2. fetch option 
	const option = { method : 'GET' }
	// 3. fetch , queryString 방식 : url?매개변수명=값  
	fetch( `book_project/book/bookList `, option )
		.then( r => r.json() )
		.then( data => { 
			console.log( data );
			
			// 4. 출력할 위치의 DOM 객체 반환  
			const boardlist = document.querySelector('tbody')
			// 5. 출력할 내용을 담을 변수 선언 
			let html = ``;
			// 6. 서블릿으로 응답받은 자료들을 반복문 처리 
			data.forEach( (list)=>{
				// 7. 게시물 하나씩 html 테이블의 행 으로 표현 하여 'html' 변수 누적 더하기.
				html += `		<tr>
									<th> ${list.no} </th>
									<th> <a href="#">${list.name}</a> </th>
									<th> ${list.writer} </th>
									<th> ${list.creater} </th>
									<th><button type="button" class="btn btn-primary">삭제하기</button></th>	
								</tr>`
			}) // f end 
			// 8. 반복문 종료 표현된 html 출력 
			boardlist.innerHTML = html;
		 })
		 .catch( e => { console.log(e); } )
		 
} // f end
findall();
