package bb.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CsDTO {
	
	private int csno;
	private int mno;
	private String cstitle;
	private String cscontents;
	private String csrepdate;
	private String csimg;
	

}
