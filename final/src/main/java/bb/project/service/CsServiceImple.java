package bb.project.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.CsDAO;
import bb.project.dto.CsDTO;
import bb.project.dto.PageNum;
import lombok.Setter;

@Setter
@Service
public class CsServiceImple implements CsService {

	@Autowired
	@Qualifier("cs")
	CsDAO dao;
	
	
	@Override
	public void addCs(CsDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void updateCs(CsDTO dto) {
		dao.updateOne(dto);
		
	}

	@Override
	public void deleteCs(int csno) {
		dao.deleteOne(csno);
		
	}

	@Override
	public int alldata() {
		return dao.countAllData();
	}

	@Override
	public List<CsDTO> selectAll(int StartNum, int EndNum) {
		return dao.selectAll(StartNum, EndNum);
	}

	@Override
	public CsDTO selectONE(int csno) {
		return dao.selectOne(csno);
	}
	


}
