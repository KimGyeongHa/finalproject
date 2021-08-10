package bb.project.control;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;
import bb.project.dto.CsDTO;
import bb.project.dto.MemberAUTHDTO;
import bb.project.dto.TrinfoDTO;
import bb.project.dto.TrinfoDetailDTO;
import bb.project.service.MemberDetailService;
import bb.project.service.MemberService;
import bb.project.service.TrinfoDetailService;
import bb.project.service.MemberAUTHSERVICE;
import bb.project.service.TrinfoService;
import lombok.Setter;

@Setter
@Controller
public class TestController {

	BCryptPasswordEncoder pe = new BCryptPasswordEncoder();

	@Autowired
	MemberService ms;
	@Autowired
	MemberDetailService mds;
	@Autowired
	MemberAUTHSERVICE auth;

	@Autowired
	TrinfoService tfs;
	@Autowired
	TrinfoDetailService tfds;
	


	@GetMapping("/addmember")
	public String insert() {
		return "insertForm";
	}


	@PostMapping("/addmember")
	public String insert(@ModelAttribute MemberDTO dto, MemberDetailDTO dto1, MemberAUTHDTO dto2) {

		String pwd = dto.getPw();
		dto.setPw(pe.encode(pwd));

		ms.addmember(dto);

		mds.addetc(dto1);
		auth.addauto(dto2);

		return "redirect:/main";
	}

	@RequestMapping("/main")
	public String main() {

		
	
		return "main";
	}


	  @RequestMapping("/Login") public String login() { 

		  return"Login";
		  }
	 
	  @RequestMapping("/Logout") public String logout() {
		  return "Logout";
	  }
	
	  
	  @RequestMapping("/spring")
	  public String spring(Principal pc,HttpSession session,Model model) {

		int type = 1;
		
		List<TrinfoDTO> list= tfs.selectAll(type);

		model.addAttribute("list",list);
		return "spring";
		
		
	}

	  
	  
	  @RequestMapping("/springdetail")public String springdetail(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

		 
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "springdetail";
			
		  }
	  
	 
	  @RequestMapping("/summer")public String summer(Principal pc,HttpSession session,Model model) {

		  
			int type = 2;
			
			List<TrinfoDTO> list= tfs.selectAll(type);

			model.addAttribute("list",list);
			return "summer";
			
		  }
	  
	  @RequestMapping("/summerdetail")public String summerdetail(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

		  
			
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "summerdetail";
			
		  }
	  
	  @RequestMapping("/fall")public String fall(Principal pc,HttpSession session,Model model) {

		  
			int type = 3;
			
			List<TrinfoDTO> list= tfs.selectAll(type);

			model.addAttribute("list",list);
			return "fall";
			
		  }

	  
	  
	  @RequestMapping("/falldetail")public String falldetail(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

		  
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "falldetail";
			
		  }
	
	  @RequestMapping("/winter")public String winter(Principal pc,HttpSession session,Model model) {

		  
			int type = 4;
			
			List<TrinfoDTO> list= tfs.selectAll(type);

			model.addAttribute("list",list);
			return "winter";
			
		  }
	  @RequestMapping("/winterdetail")public String winter(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

		 
			
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "winterdetail";
			
		  }

	  @RequestMapping("/recommended")public String recommended(Principal pc,HttpSession session,Model model) {

		  
			int type = 5;
			
			List<TrinfoDTO> list= tfs.selectAll(type);

			model.addAttribute("list",list);
			return "recommended";
			
		  }
	  @RequestMapping("/recommendeddetail")public String recommendeddetail(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

			 
			
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "recommendeddetail";
			
		  }
	  
	  @RequestMapping("/best10")public String best10(Principal pc,HttpSession session,Model model) {

		  
			int type = 6;
			
			List<TrinfoDTO> list= tfs.selectAll(type);

			model.addAttribute("list",list);
			return "best10";
			
		  }
	  
	  @RequestMapping("/best10detail")public String best10detail(Principal pc,HttpSession session,Model model,@RequestParam("bno")int bno) {

			 
			
			TrinfoDetailDTO dto= tfds.readOne(bno);

			model.addAttribute("dto",dto);
			return "best10detail";
			
		  }
	  
	  
}
