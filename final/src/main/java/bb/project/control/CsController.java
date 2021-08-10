package bb.project.control;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bb.project.dto.CsDTO;
import bb.project.dto.MemberDTO;
import bb.project.service.CsService;
import bb.project.service.MemberService;
import lombok.Setter;

@Controller
@Setter

public class CsController {

	@Autowired
	CsService csv;
	@Autowired
	MemberService ms;

	@RequestMapping("/Cslist")
	public String list(Model model, @RequestParam(name = "currentPageNo", defaultValue = "1") int currentPageNo,
			Principal pc, HttpSession session) {

		String id = pc.getName();

		MemberDTO dto = ms.selectone(id);

		session.setAttribute("dto1", dto);

		int totalCount = csv.alldata();

		// ���۹�ȣ
		int StartNum = (currentPageNo - 1) * 10 + 1;
		// �� ��ȣ
		int EndNum = currentPageNo * 10;
		// �������� �Խù��Ǽ�
		int countPerPage = 10;

		// �� ������ ��
		int totalPage = (totalCount % countPerPage == 0) ? totalCount / countPerPage : totalCount / countPerPage;
		// ������ ���� ��ȣ
		int startpageNo = currentPageNo - 5 <= 0 ? 1 : currentPageNo - 5;
		// ������ �� ��ȣ
		int endpageNo = startpageNo + 10 >= totalPage ? totalPage : startpageNo + 10;

		// ����
		boolean prev = currentPageNo > 5 ? true : false;
		// ����
		boolean next = currentPageNo + 5 >= totalPage ? false : true;

		model.addAttribute("totalCount", csv.alldata());
		model.addAttribute("StartNum", StartNum);
		model.addAttribute("EndNum", EndNum);
		model.addAttribute("countPerPage", countPerPage);
		model.addAttribute("startpageNo", startpageNo);
		model.addAttribute("endpageNo", endpageNo);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);

		List<CsDTO> list = csv.selectAll(StartNum, EndNum);// ���۹�ȣ~~����ȣ

		model.addAttribute("list", list);
		return "Cslist";
	}

	@GetMapping("/CsinsertForm")
	public String trinfotestForm(Principal pc, HttpSession session) {
		String id = pc.getName();

		MemberDTO dto = ms.selectone(id);

		session.setAttribute("dto1", dto);

		return "CsinsertForm";
	}

	@PostMapping("/CsinsertForm")
	public String insert(@ModelAttribute CsDTO dto, HttpSession session, HttpServletRequest req,
			@ModelAttribute("uploadfile") UploadFile file) {

		session = req.getSession();

		ServletContext application = session.getServletContext();

		MultipartFile mfile = file.getFile();

		String filePath = application.getRealPath("/data");
		String fileName = mfile.getOriginalFilename();

		File f = new File(filePath + "/" + fileName);

		dto.setCsimg("data/" + fileName);

		csv.addCs(dto);

		try {
			mfile.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/Cslist";
	}

	@GetMapping("/Csdetail")
	public ModelAndView detail(@RequestParam("csno") int csno, Model model, Principal pc, HttpSession session,
			@ModelAttribute("uploadfile") UploadFile file) {

		String id = pc.getName();

		MemberDTO dto = ms.selectone(id);

		session.setAttribute("dto1", dto);

		return new ModelAndView("Csdetail", "dto", csv.selectONE(csno));

	}

	@GetMapping("/Csmodify")
	public String modify(@RequestParam("csno") int csno, Model model, HttpSession session, Principal pc) {

		// memberdto ��������
		String id = pc.getName();

		MemberDTO dto1 = ms.selectone(id);

		session.setAttribute("dto1", dto1);

		// csdto�������� 
		CsDTO dto =csv.selectONE(csno);

		model.addAttribute("dto", dto);


		return "Csmodify";
	}

	@GetMapping("/Csmodify2")
	public String Csmodify(@ModelAttribute CsDTO dto) {
	
		
		csv.updateCs(dto);

		return "redirect:/Cslist";
	}

	@GetMapping("/Csdelete")
	public String delete(@RequestParam("csno") int csno) {
		csv.deleteCs(csno);

		return "redirect:/Cslist";
	}

}
