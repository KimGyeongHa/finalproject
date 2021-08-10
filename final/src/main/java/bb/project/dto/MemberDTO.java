package bb.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class MemberDTO {
	private int mno;
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String pn;
	private String nickname;

	
	
}
