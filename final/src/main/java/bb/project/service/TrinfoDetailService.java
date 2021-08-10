package bb.project.service;


import java.util.List;

import bb.project.dto.TrinfoDetailDTO;

public interface TrinfoDetailService {
	public void addtrdetail(TrinfoDetailDTO dto);
	public void updatedetail(TrinfoDetailDTO dto);
	public void deletedetail(int bno);
	public TrinfoDetailDTO readOne(int bno);
 
}
