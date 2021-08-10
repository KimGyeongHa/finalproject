package bb.project.oracledao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemberDetailDAO;
import bb.project.dto.MemberDetailDTO;
import lombok.Setter;

@Repository("mdt")
@Setter
public class MemberDetailOracelDAO implements MemberDetailDAO {

	@Autowired
	private SqlSession ss;
	

	@Override
	public void intsertOne(MemberDetailDTO dto) {
		ss.insert("bb.project.dao.MemberDetailDAO.insertOne",dto);
		
	}

	@Override
	public void updateOne(MemberDetailDTO dto) {
		ss.update("bb.project.dao.MemberDetailDAO.updateOne",dto);
		
	}

}
