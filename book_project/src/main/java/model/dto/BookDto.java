package model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@AllArgsConstructor @NoArgsConstructor
public class BookDto {
	private int no;
	private String name;
	private String writer;
	private String creator;
	private String cdate;
	private String udate;
}

