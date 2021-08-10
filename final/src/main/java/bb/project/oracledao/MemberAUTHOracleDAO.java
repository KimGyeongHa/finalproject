package bb.project.oracledao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemberAUTHDAO;
import bb.project.dto.MemberAUTHDTO;
import lombok.Setter;


@Repository("AUTHDAO")
@Setter
public class MemberAUTHOracleDAO implements MemberAUTHDAO {
	
	@Autowired
	private SqlSession ss;
	
	@Override
	public void isnertauth(MemberAUTHDTO dto) {
		ss.insert("bb.project.dao.Member_AUTODAO.insertOne",dto);
		
	}
	

}
