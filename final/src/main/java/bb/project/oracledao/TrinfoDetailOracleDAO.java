package bb.project.oracledao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.TrinfoDetailDAO;
import bb.project.dto.TrinfoDetailDTO;
import lombok.Setter;

@Repository("detaildao")
@Setter
public class TrinfoDetailOracleDAO implements TrinfoDetailDAO{

	
	@Autowired
	private SqlSession ss;
	
	
	@Override
	public void insertOne(TrinfoDetailDTO dto) {
		ss.insert("bb.project.dao.TrinfoDetailDAO.insertOne",dto);		
	}

	@Override
	public void updateOne(TrinfoDetailDTO dto) {
		ss.update("bb.project.dao.TrinfoDetailDAO.updateOne",dto);
		
	}

	@Override
	public void deleteOne(int bno) {
		ss.delete("bb.project.dao.TrinfoDetailDAO.deleteOne",bno);
		
	}

	@Override
	public TrinfoDetailDTO selectOne(int bno) {
		return ss.selectOne("bb.project.dao.TrinfoDetailDAO.selectOne",bno);
	}


}
