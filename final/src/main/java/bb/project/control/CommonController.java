package bb.project.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	@RequestMapping("/final/Login")
	public void login(String error,String logout,Model model) {
		
		if(error != null) {
			model.addAttribute("error","�α��� �� ���� �߻�");		
	}else if (logout != null) {
		model.addAttribute("logout","�α׾ƿ��Ǽ̽��ϴ�.");
	}
		}
	@RequestMapping("/final/Logout")
	public void logoutGet() {
		System.out.println("Ŀ���� �α׾ƿ�");
	}
	
	
}