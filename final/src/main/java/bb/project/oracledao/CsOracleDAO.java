package bb.project.oracledao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.CsDAO;

import bb.project.dto.CsDTO;
import bb.project.dto.PageNum;
import lombok.Setter;

@Repository("cs")
@Setter
public class CsOracleDAO implements CsDAO  {

	@Autowired
	SqlSession ss;
	

	@Override
	public void insertOne(CsDTO dto) {
		ss.insert("bb.project.dao.CsDAO.insertOne",dto);
	}

	@Override
	public void updateOne(CsDTO dto) {
		ss.update("bb.project.dao.CsDAO.updateOne",dto);
		
	}

	@Override
	public void deleteOne(int csno) {
		ss.delete("bb.project.dao.CsDAO.deleteOne",csno);
		
	}

	

	@Override
	public List<CsDTO> selectAll(int StartNum, int EndNum) {
		PageNum pg = new PageNum(StartNum, EndNum);
		return ss.selectList("bb.project.dao.CsDAO.selectCs",pg);
	}

	@Override
	public int countAllData() {
		return ss.selectOne("bb.project.dao.CsDAO.getData");
	}

	@Override
	public CsDTO selectOne(int csno) {
		return ss.selectOne("bb.project.dao.CsDAO.selectOne",csno);
	}

}
