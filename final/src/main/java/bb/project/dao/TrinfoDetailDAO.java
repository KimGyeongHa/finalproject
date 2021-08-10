package bb.project.dao;


import java.util.List;

import bb.project.dto.TrinfoDetailDTO;

public interface TrinfoDetailDAO {
	
	// TrinfoDetail 받아오는 dao
		public void insertOne(TrinfoDetailDTO dto);
		public void updateOne(TrinfoDetailDTO dto);
		public void deleteOne(int bno);
		public TrinfoDetailDTO selectOne(int bno); 

}
