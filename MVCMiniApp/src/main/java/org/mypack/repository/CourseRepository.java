package org.mypack.repository;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.mypack.model.CourseModel;
import org.mypack.model.MaterialModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.*;
import org.mypack.model.CourseModel;

@Repository("courseRepo")
public class CourseRepository {

	@Autowired
	JdbcTemplate template;
	
	public boolean isAddCourse(CourseModel model) {
		int value = template.update("insert into course values('0', ?)", new PreparedStatementSetter() { 
		
		@Override
		public void setValues(PreparedStatement ps)throws SQLException {
			ps.setString(1, model.getCourse());
		}
		});
		
		return value > 0 ? true : false;
	
	}
	public List<CourseModel> getAllCourses() {
		List<CourseModel> list = template.query("select * from course", new RowMapper<CourseModel>() {

			@Override
			public  CourseModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				CourseModel model = new CourseModel();
				model.setId(rs.getInt(1));
				model.setCourse(rs.getString(2));
				return model;
			}
			
			
		});
		return list;
	}
	public boolean isDelete(int courseId) {
	    int value = template.update("DELETE FROM course WHERE cid = " + courseId);
	   
		return value > 0 ? true : false;   //1
	}
	
	

}



