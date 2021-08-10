package bb.project.service;

import org.apache.ibatis.annotations.Mapper;

import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;



public interface MemberDetailService {
	public void addetc(MemberDetailDTO dto);
	public void updateetc(MemberDetailDTO dto);


}
