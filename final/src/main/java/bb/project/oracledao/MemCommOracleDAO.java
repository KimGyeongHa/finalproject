package bb.project.oracledao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemCommDAO;
import bb.project.dto.MemCommDTO;

import lombok.Setter;

@Repository("memcomm")
@Setter
public class MemCommOracleDAO implements MemCommDAO {

	
	@Autowired
	SqlSession ss;
	
	
	@Override
	public void intsertOne(MemCommDTO dto) {
		ss.insert("bb.project.dao.MemCommDAO.insertOne",dto);	
	}

	@Override
	public void updateOne(MemCommDTO dto) {
		ss.update("bb.project.dao.MemCommDAO.updateOne",dto);
	}

	@Override
	public void deleteOne(int bno) {
		ss.delete("bb.project.dao.MemCommDAO.deleteOne",bno);
		
	}

	@Override
	public ArrayList<MemCommDTO> selectAll(int bno) {
		ArrayList<MemCommDTO> list =new ArrayList<MemCommDTO>(ss.selectList("bb.project.MemCommDAO.SelectAll", bno));
		return list;
	}

	@Override
	public void updatehits(int bno) {
		ss.update("bb.project.dao.MemCommDAO.updatehits",bno);
		
	}

}
