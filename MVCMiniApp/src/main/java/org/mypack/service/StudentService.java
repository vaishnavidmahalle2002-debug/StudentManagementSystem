package org.mypack.service;

import java.util.List;


import org.mypack.model.MaterialModel;
import org.mypack.model.StudentModel;
import org.mypack.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("studService")
public class StudentService {

	@Autowired
	StudentRepository studentRepo;
	public boolean isAddNewStudent(StudentModel model) {
		return studentRepo.isAddNewStudent(model);
	}
	
	 public List<StudentModel> getAllStudents() {
		 return studentRepo.getAllStudents();
	 }
	 
	 public boolean isDelete(int studentId) {
			return studentRepo.isDelete(studentId);
		}
	 
	 public boolean isUpdate(StudentModel model) {
		    return studentRepo.isUpdate(model);
		}
	 
	 public StudentModel getStudentById(int sid) {
		    return studentRepo.getStudentById(sid);
		}
}