package bb.project.service;

import java.util.ArrayList;
import java.util.List;

import bb.project.dto.CsDTO;

public interface CsService {
	
	public void addCs(CsDTO dto);
	public void updateCs(CsDTO dto);
	public void deleteCs(int csno);
	public int alldata();
	public List<CsDTO> selectAll(int StartNum, int EndNum);
	public CsDTO selectONE(int csno);
}
