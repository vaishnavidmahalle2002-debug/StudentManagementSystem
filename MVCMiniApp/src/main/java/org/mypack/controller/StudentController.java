package org.mypack.controller;

import org.mypack.model.CourseModel;

import org.mypack.model.MaterialModel;
import org.mypack.model.StudentModel;
import org.mypack.service.CourseService;
import org.mypack.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import java.util.*;

@Controller
@RequestMapping("stud")
public class StudentController {

	@Autowired
	CourseService courseService;
	
	@Autowired
	StudentService studService;
	
	@GetMapping("/newstudent")
	public String newStudent(Map<String,List<CourseModel>> map) {
		List<CourseModel> list = courseService.getAllCourses();
		map.put("clist", list);
		return "newstudent";
	}
	
	@PostMapping("/save")
	public String saveStudent(StudentModel model, Map<String, String> map) {
		boolean b = studService.isAddNewStudent(model);
		if(b) {
			map.put("msg", "Student Save Successfully....");
		} else {
			map.put("msg", "Student Not Save Successfully....");
		}

		return "newstudent";
	}
	
	@GetMapping("/viewstud")
	public String viewStudents(Map<String, List>map) {
		List<StudentModel> slist = studService.getAllStudents();
	        map.put("slist", slist);
	        map.put("clist", courseService.getAllCourses());
	        return "viewstudent";
	}
	
	@GetMapping("/delstudent")
	public RedirectView viewstudent(@RequestParam("sid") Integer id) {
		boolean result = studService.isDelete(id);
		RedirectView rv = new RedirectView();
		rv.setUrl("viewstud");
		return rv;
	}

	@GetMapping("/updstudent")
	public String updateStudent(@RequestParam("sid") int sid,
	                            Map<String,Object> map) {

	    StudentModel student = studService.getStudentById(sid);

	    map.put("student", student);
	    map.put("clist", courseService.getAllCourses());

	    return "redirect:/stud/viewstud";
	}
	
	@PostMapping("/updatestudent")
	public String updateStudent(StudentModel model,
	                             Map<String, String> map) {

	    boolean result = studService.isUpdate(model);

	    if (result) {
	        map.put("msg", "Student Updated Successfully...");
	    } else {
	        map.put("msg", "Student Not Updated...");
	    }

	    return "redirect:/stud/viewstud";
	}
	
	

	} 
