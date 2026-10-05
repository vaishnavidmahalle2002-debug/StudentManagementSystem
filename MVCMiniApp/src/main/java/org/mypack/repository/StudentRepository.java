package org.mypack.repository;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.*;
import java.sql.SQLException;

import org.mypack.model.MaterialModel;
import org.mypack.model.StudentModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("studentRepo")
public class StudentRepository {

	@Autowired
	JdbcTemplate template;
	
	public boolean isAddNewStudent(StudentModel model) {
		int value = template.update("insert into student values('0', ?,?,?,?)", new PreparedStatementSetter() { 
		
		@Override
		public void setValues(PreparedStatement ps)throws SQLException {
			ps.setString(1, model.getSname());
			ps.setString(2, model.getSemail());
			ps.setString(3, model.getScontact());
			ps.setInt(4, model.getId());
		}
		});
		
		return value > 0 ? true : false;
	
	}
	 public List<StudentModel> getAllStudents() {
               
		 List<StudentModel> studList = template.query("select * from student", new RowMapper<StudentModel>() {
			 
			 @Override
			 public StudentModel mapRow(ResultSet rs, int rowNum)throws SQLException {
				 StudentModel sm = new StudentModel();
				 sm.setSid(rs.getInt(1));
				 sm.setSname(rs.getString(2));
				 sm.setSemail(rs.getString(3));
				 sm.setScontact(rs.getString(4));
				 sm.setId(rs.getInt(5));
				 
				 return sm;
			 }
		 });
		 return studList;
	    }
	 
	 public boolean isDelete(int studentId) {

 	    int value = template.update("DELETE FROM student WHERE sid=?", studentId );

 	    return value > 0;
 	}
   
   public boolean isUpdate(StudentModel model) {

	   int value = template.update(
			    "UPDATE student SET sname=?, semail=?, scontact=?, cid=? WHERE sid=?",
			    model.getSname(),
			    model.getSemail(),
			    model.getScontact(),
			    model.getId(),   // assuming CourseModel has 'id' mapped to cid
			    model.getSid()
			);

 	    return value > 0;
 	}
   public StudentModel getStudentById(int sid) {

	    return template.queryForObject(
	        "select * from student where sid=?",
	        new Object[]{sid},

	        (rs, rowNum) -> {
	            StudentModel s = new StudentModel();

	            s.setSid(rs.getInt("sid"));
	            s.setSname(rs.getString("sname"));
	            s.setSemail(rs.getString("semail"));
	            s.setScontact(rs.getString("scontact"));
	            s.setId(rs.getInt("cid"));

	            return s;
	        });

	}

	    
}
