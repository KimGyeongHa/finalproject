package bb.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.MemCommDAO;
import bb.project.dto.MemCommDTO;
import lombok.Setter;

@Service
@Setter
public class MemCommServiceImple implements MemCommService {

	@Qualifier("memcomm")
	@Autowired
	MemCommDAO dao;
	
	
	@Override
	public void addcomm(MemCommDTO dto) {
		dao.intsertOne(dto);
		
	}

	@Override
	public void updatecomm(MemCommDTO dto) {
		dao.updateOne(dto);
		
	}

	@Override
	public void deletecomm(int bno) {
		dao.deleteOne(bno);
	}

	@Override
	public ArrayList<MemCommDTO> selectAll(int bno) {
		return dao.selectAll(bno);
		
	}

}
