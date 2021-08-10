package bb.project.control;

import java.io.File;
import java.io.IOException;
import java.security.Principal;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.manager.util.SessionUtils;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.SessionManagementConfigurer;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import bb.project.dto.MemberDTO;
import bb.project.dto.TrinfoDTO;
import bb.project.dto.TrinfoDetailDTO;
import bb.project.service.MemberService;
import bb.project.service.TrinfoDetailService;
import bb.project.service.TrinfoService;
import lombok.Setter;

@Setter
@Controller
public class TrinfoController {
	
	@Autowired
	MemberService ms;
	@Autowired
	FileValidator fileValidator;
	@Autowired
	TrinfoService tfs;
	@Autowired
	TrinfoDetailService tfds;
	
	
	@GetMapping("/trinfotest")
	  public String	trinfotestForm(Principal pc, HttpSession session) {
	 	String id = pc.getName();
		
		  
		 MemberDTO dto = ms.selectone(id);
		  
		 session.setAttribute("dto", dto);
	  
		
		
			return "trinfotest";
		}
	  
	
	
	
	  @PostMapping("/trinfotest")
	  	public String trinfotest(@ModelAttribute TrinfoDTO dto1,@ModelAttribute TrinfoDetailDTO dto2,
	  			@ModelAttribute("uploadfile")UploadFile file,
	  			HttpServletRequest req,BindingResult result,HttpSession ss,Authentication authentication,Principal pc) {
		  
		  
		  						
			 fileValidator.validate(file, result);
			 if(result.hasErrors()) { 
				 return "trinfotest"; }
			 
		  HttpSession session = req.getSession();
		  
		  ServletContext application = session.getServletContext();
		  
		  MultipartFile mfile = file.getFile();
		  
		  
		  String filePath = application.getRealPath("/data");
		  String fileName = mfile.getOriginalFilename();
		  
		  File f = new File(filePath + "/"+fileName);
		  
		  System.out.println(filePath+fileName);
		  
		  dto1.setTrimg("data/"+fileName);
		  dto1.setId(pc.getName());

		  
		  
		  tfs.insert(dto1);
		  
		  tfds.addtrdetail(dto2);
		  
		  
		  
		  try {
				mfile.transferTo(f);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  
		  
		  return "forward:/main"; 
	  }


}
