package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.MemberDetailDTO;

public interface MemberDetailDAO {
	
	// MemberDetail �޾ƿ��� dao
		public void intsertOne(MemberDetailDTO dto);
		public void updateOne(MemberDetailDTO dto);

}
