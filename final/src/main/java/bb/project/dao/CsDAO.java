package bb.project.dao;

import java.util.ArrayList;
import java.util.List;

import bb.project.dto.CsDTO;
import bb.project.dto.PageNum;

public interface CsDAO {
	
	//CS값 받아오는 DAO
		public void insertOne(CsDTO dto);
		public void updateOne(CsDTO dto);
		public void deleteOne(int csno);
		public CsDTO selectOne(int csno);
		public List<CsDTO> selectAll(int StartNum,int EndNum);
		public int countAllData();

}
