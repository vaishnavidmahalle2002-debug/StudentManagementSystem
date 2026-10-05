package org.mypack.service;
import org.mypack.model.CourseModel;

import java.util.*;
import org.mypack.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseService {

		@Autowired
		CourseRepository courseRepo;
		
		public boolean isAddNewCourse(CourseModel model) {
			return courseRepo.isAddCourse(model);
		}
		public List<CourseModel> getAllCourses() {
			return courseRepo.getAllCourses();
		}
		public boolean isDelete(int courseId) {
			return courseRepo.isDelete(courseId);
		}
	}