package bb.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.MemberAUTHDAO;
import bb.project.dto.MemberAUTHDTO;
import lombok.Setter;


@Service
@Setter
public class MemberAUTHSERVICEIMPLE implements MemberAUTHSERVICE {
	
	@Autowired
	@Qualifier("AUTHDAO")
	MemberAUTHDAO dao;
	
	@Override
	public void addauto(MemberAUTHDTO dto) {
		dao.isnertauth(dto);
		
	}

}
