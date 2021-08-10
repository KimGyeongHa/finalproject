package bb.project.oracledao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemberDAO;
import bb.project.dto.MemberDTO;
import lombok.Setter;

@Repository("mdao")
@Setter
public class MemberOracleDAO implements MemberDAO {
	
	
	@Autowired
	private SqlSession ss;
	
	

	@Override
	public void updateOne(MemberDTO dto) {
		ss.update("bb.project.dao.MemberDAO.updateOne",dto);
		
	}

	@Override
	public void deleteOne(String id) {
		ss.delete("bb.project.dao.MemberDAO.deleteOne",id);
		
		
		
	}

	@Override
	public void insertOne(MemberDTO dto){
		
	
		ss.insert("bb.project.dao.MemberDAO.insertOne",dto);
		
	}

	public MemberDTO selectOne(String id) {
		  return ss.selectOne("bb.project.dao.MemberDAO.selectOne", id);
	}


}
