package controller;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.BookDao;
import model.dto.BookDto;

@WebServlet ("/book")
public class BookController extends HttpServlet {

	// [1] 도서 등록
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post test");
		
		ObjectMapper mapper = new ObjectMapper();
		
		BookDto bookDto = mapper.readValue(req.getReader(), BookDto.class);
		
		boolean result = BookDao.getInstance().create(bookDto);
		resp.setContentType("application/json");
		resp.getWriter().print(result);
		
	}
	
	
	// [2] 도서 전체 출력
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get test");

		ArrayList<BookDto> result = BookDao.getInstance().findAll();
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
	
	
	// [3] 도서 개별 출력 ViewController
	
	
	// [4] 도서 수정
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("put test");
		ObjectMapper mapper = new ObjectMapper();
		BookDto bookDto = mapper.readValue(req.getReader(), BookDto.class);
		
		boolean result = BookDao.getInstance().update(bookDto);
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	
	// [5] 도서 삭제
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("delete test");
		int no = Integer.parseInt(req.getParameter("no"));
		
		boolean result = BookDao.getInstance().delete(no);
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	
	
}































