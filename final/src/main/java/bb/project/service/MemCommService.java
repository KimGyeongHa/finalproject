package bb.project.service;

import java.util.ArrayList;

import bb.project.dto.MemCommDTO;

public interface MemCommService {
	public void addcomm(MemCommDTO dto);
	public void updatecomm(MemCommDTO dto);
	public void deletecomm(int bno);
	public ArrayList<MemCommDTO> selectAll(int bno);
	

}
