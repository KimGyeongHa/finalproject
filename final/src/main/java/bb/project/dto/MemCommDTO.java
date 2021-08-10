package bb.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class MemCommDTO {
	private int bno;
	private int mno;
	private int type;
	private int memno;
	private String id;
	private String memreg;
	private String memcontents;
	private String memimg;
	private int hits;
}
