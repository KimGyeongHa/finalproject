package bb.project.oracledao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.PageNum;
import bb.project.dto.TrinfoDTO;
import lombok.Setter;

@Repository("trinfo")
@Setter
public class TrinfoOracleDAO implements TrinfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public TrinfoDTO selectOne(String id) {
		return ss.selectOne("bb.project.dao.TrinfoDAO.selectOne",id);
	}

	@Override
	public void insertOne(TrinfoDTO dto) {
		ss.insert("bb.project.dao.TrinfoDAO.insertOne", dto);
		
	}

	@Override
	public void updateOne(TrinfoDTO dto) {
		ss.update("bb.project.dao.TrinfoDAO.updateOne", dto);
		
	}

	@Override
	public void deleteOne(int bno) {
		ss.delete("bb.project.dao.TrinfoDAO.deleteOne",bno);
		
	}


	@Override
	public void updatehits(int bno) {
		ss.update("bb.project.dao.TrinfoDAO.updatehits",bno);
		
	}


	@Override
	public List<TrinfoDTO> selecttype(int type) {
		
		return ss.selectList("bb.project.dao.TrinfoDAO.selectAl",type);
	}

	
	

}
