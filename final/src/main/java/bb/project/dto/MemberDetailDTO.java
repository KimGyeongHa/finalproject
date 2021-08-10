package bb.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberDetailDTO {
	private int mno;
	private String addrs;
	private String email;
	private String gender;
	private String marr;
	private String chi;
	private String emaildetail1;
	private String emaildetail2;
}
