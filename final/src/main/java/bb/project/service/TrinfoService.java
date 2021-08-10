package bb.project.service;

import java.util.ArrayList;
import java.util.List;

import bb.project.dto.TrinfoDTO;
import lombok.Setter;


public interface TrinfoService {
	
	public void update(TrinfoDTO dto);
	public void insert(TrinfoDTO dto);
	public void delete(int bno);
	public void uphits(int bno);
	public TrinfoDTO selectone(String id);
	public List<TrinfoDTO> selectAll(int type);
}
