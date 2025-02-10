package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dto.BookDto;


@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class BookDao extends Dao{
	@Getter
	private static BookDao instance = new BookDao();
	
	// [1] 도서 등록
	public boolean create(BookDto bookdto) {
		try {
			String sql = "insert into book(name, writer, creator) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, bookdto.getName());
			ps.setString(2, bookdto.getWriter());
			ps.setString(3, bookdto.getCreator());
			int count = ps.executeUpdate();
			if(count == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;
	}
	// [2] 도서 전체 출력
	public ArrayList<BookDto> findAll(){
		ArrayList<BookDto> list = new ArrayList<BookDto>();
		try {
			String sql = "select * from book";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setNo(rs.getInt("no"));
				bookDto.setName(rs.getString("name"));
				bookDto.setWriter(rs.getString("writer"));
				bookDto.setCreator(rs.getString("creator"));
				list.add(bookDto);
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return list;
	}
	
	// [3] 도서 개별 출력
	public BookDto findByNo(int no) {
		try {
			String sql = "select * from book where no = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setNo(rs.getInt("no"));
				bookDto.setName(rs.getString("name"));
				bookDto.setWriter(rs.getString("writer"));
				bookDto.setCreator(rs.getString("creator"));
				bookDto.setCdate(rs.getString("cdate"));
				bookDto.setUdate(rs.getString("udate"));
				return bookDto;
			}
		}catch(SQLException e) {System.out.println(e);}
		return null;
	}
	
	
	// [4] 도서 수정
	public boolean update(BookDto bookDto) {
		try {
			String sql = "update book set name = ?, writer = ?, creator = ?, udate = now() where no = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, bookDto.getName());
			ps.setString(2, bookDto.getWriter());
			ps.setString(3, bookDto.getCreator());
			//ps.setString(4, bookDto.getUdate());
			ps.setInt(4, bookDto.getNo());
			
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;
	}
	
	
	// [5] 도서 삭제
	public boolean delete(int no) {
		try {
			String sql = "delete from book where no = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		return false;
	}
	
	
}

















