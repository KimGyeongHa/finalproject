package bb.project.service;

import bb.project.dto.MemberDTO;

public interface MemberService {
	
	public void addmember(MemberDTO dto);
	public void deletemember(String id);
	public void updatemember(MemberDTO dto);
	public MemberDTO selectone(String id);
}
