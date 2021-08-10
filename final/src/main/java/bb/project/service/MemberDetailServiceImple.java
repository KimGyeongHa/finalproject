package bb.project.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.MemberDetailDAO;
import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;
import lombok.Setter;

@Service
@Setter
public class MemberDetailServiceImple implements MemberDetailService {

	@Autowired
	@Qualifier("mdt")
	MemberDetailDAO dao;
	
	
	
	@Override
	public void addetc(MemberDetailDTO dto) {
		dao.intsertOne(dto);
		
	}


	@Override
	public void updateetc(MemberDetailDTO dto) {
		dao.updateOne(dto);
		
	}


	

}
