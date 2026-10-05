package org.mypack.service;

import java.util.List;


import org.mypack.model.MaterialModel;
import org.mypack.repository.MaterialRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("materialService")
public class StudyMaterialService {

	@Autowired
	MaterialRepository materialRepo;
	public boolean isSave(MaterialModel model) {
		return materialRepo.isSave(model);
	}
	public List<MaterialModel> getAllStudyMaterial() {
	    return materialRepo.getAllStudyMaterial();
	}
	 
	 public boolean isDelete(int materialId) {
			return materialRepo.isDelete(materialId);
		}
	 
	 public boolean isUpdate(MaterialModel model) {
		    return materialRepo.isUpdate(model);
		}
}


