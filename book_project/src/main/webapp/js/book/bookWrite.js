

const onWrite = ( ) => {
	// 첨부파일 있다 = form 전송 vs 첨부파일 없다 = form 또는 JSON
	// 1. 입력받은 값들을 가져오기 위해서 DOM 객체 호출 
	const nameInput = document.querySelector('#nameInput'); 
	const writerInput = document.querySelector('#writerInput'); 
	const creatorInput = document.querySelector('#creatorInput'); 
	// 2. DOM 객체 에서의 입력받은 (value속성)값 호출
	const name =  nameInput.value;		
	const writer = writerInput.value;	
	const creator = creatorInput.value; 
	// 3. 값들을 묶어주는 객체( json ) 만들기 , json의 속성명은 rest명세서 맞게 정의
	let obj = { name : name , writer : writer , creator : creator}
	// 4. fetch option 
	const option = { 
		method : 'POST', 
		headers : { 'Content-Type' : 'application/json'} ,
		body : JSON.stringify( obj ) // - JSON형식(모양)의 문자열 타입으로 변환
	}
	// 5.
	fetch( '/book_project/book/bookWrite' , option )
		.then( r => r.json() )
		.then( data => {
			console.log( data );
			if( data == true ){
				alert('글쓰기 성공');
				
			}else{
				alert('글쓰기 실패');
			}
		})
		.catch( e => { console.log(e); })
		
	}//f end