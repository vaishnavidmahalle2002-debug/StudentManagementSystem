package org.mypack.controller;
import java.util.List;
import java.util.Map;


import org.mypack.model.CourseModel;
import org.mypack.model.Login;
import org.mypack.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("course")
public class CourseController {

	@Autowired
	CourseService courseService;

	@GetMapping("/save")
	public String save(CourseModel model, Map<String, String> map) {
		boolean result = courseService.isAddNewCourse(model);
		if (result) {
			map.put("msg", "Course Save Successfully....");
		} else {
			map.put("msg", "Course Not Save Successfully....");
		}

		return "addcourse";
	}

	@GetMapping("/viewcourse")
	public String viewCourse(Map<String, List<CourseModel>> m) {
		List<CourseModel> list = courseService.getAllCourses();
		m.put("clist", list);
		return "viewcourse"; // viewcourse.jsp
	}

	@GetMapping("/delcourse")
	public RedirectView viewCourse(@RequestParam("cid") Integer id) {
		boolean result = courseService.isDelete(id);
		RedirectView rv = new RedirectView();
		rv.setUrl("viewcourse");
		return rv;
	}

	@GetMapping("/updcourse")
	public String updateCourse(@RequestParam("cid") Integer cid, @RequestParam("name") String name,
			Map<String, String> map) {
		map.put("cid", "" + cid);
		map.put("name", name);
		return "updatecourse";
	}
	
	@GetMapping("/demoview")
	@ResponseBody
	public CourseModel getCourse() {
		CourseModel cm = new CourseModel();
		cm.setId(1);
		cm.setCourse("java");
		return cm;
	}
}
