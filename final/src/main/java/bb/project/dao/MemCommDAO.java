package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.MemCommDTO;
import bb.project.dto.MemberDTO;

public interface MemCommDAO {
	
	// Memcomm 받아오는 Dao
		public void intsertOne(MemCommDTO dto);
		public void updateOne(MemCommDTO dto);
		public void deleteOne(int bno);
		public ArrayList<MemCommDTO> selectAll(int bno);
		public void updatehits(int bno);

}
