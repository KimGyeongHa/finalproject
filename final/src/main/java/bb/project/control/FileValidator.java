package bb.project.control;

import org.springframework.stereotype.Repository;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;



@Repository("validator")
public class FileValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// �˻� ��� : target 
		// �̶� �߻��ϴ� ���� : errors
		
		UploadFile file =  (UploadFile) target;
		
		MultipartFile mf = file.getFile();
		int fileSize  = 1024*1024*100; // 100m
		if(mf.getSize() == 0 ) {
			errors.rejectValue("file", null,"������ �������ּ���");
			
		}else if (mf.getSize()> fileSize) {
			errors.rejectValue("file", null,"100MB ������ ���ϸ� ���۰����մϴ�.");
		}
		
}
}
