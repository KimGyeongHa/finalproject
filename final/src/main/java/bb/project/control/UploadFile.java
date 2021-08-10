package bb.project.control;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadFile {
	private MultipartFile file;

}
