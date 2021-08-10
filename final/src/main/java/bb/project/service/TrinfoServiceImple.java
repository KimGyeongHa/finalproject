package bb.project.service;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.TrinfoDTO;
import lombok.Setter;


@Service
@Setter
public class TrinfoServiceImple implements TrinfoService {

	@Qualifier("trinfo")
	@Autowired
	TrinfoDAO dao;
	
	

	@Override
	public void update(TrinfoDTO dto) {
		dao.updateOne(dto);
		
	}

	@Override
	public void insert(TrinfoDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void delete(int bno) {
		dao.deleteOne(bno);
		
	}

	@Override
	public void uphits(int bno) {
		dao.updatehits(bno);
		
	}



	@Override
	public List<TrinfoDTO> selectAll(int type) {
		return dao.selecttype(type);
	}

	@Override
	public TrinfoDTO selectone(String id) {

		return dao.selectOne(id);
	}


}
