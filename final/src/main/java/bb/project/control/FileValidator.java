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
		// 검사 대상 : target 
		// 이때 발생하는 에러 : errors
		
		UploadFile file =  (UploadFile) target;
		
		MultipartFile mf = file.getFile();
		int fileSize  = 1024*1024*100; // 100m
		if(mf.getSize() == 0 ) {
			errors.rejectValue("file", null,"파일을 선택해주세요");
			
		}else if (mf.getSize()> fileSize) {
			errors.rejectValue("file", null,"100MB 이하의 파일만 전송가능합니다.");
		}
		
}
}
