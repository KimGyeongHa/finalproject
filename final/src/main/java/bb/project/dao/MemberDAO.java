package bb.project.dao;

import bb.project.dto.MemberDTO;

public interface MemberDAO {
	
	// MEMBER�� �޾ƿ��� DAO
		public void insertOne(MemberDTO dto);
		public void updateOne(MemberDTO dto);
		public void deleteOne(String id);
		public MemberDTO selectOne(String id);
		
	
	

}
