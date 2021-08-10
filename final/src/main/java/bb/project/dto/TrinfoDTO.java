package bb.project.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class TrinfoDTO {
	private int bno;
	private int type;
	private String trtitle;
	private String trimg;
	private int mno;
	private int hits;
	private String id;
}
