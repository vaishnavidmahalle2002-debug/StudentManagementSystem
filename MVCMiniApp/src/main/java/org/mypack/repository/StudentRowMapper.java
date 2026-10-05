package org.mypack.repository;

import java.sql.ResultSet;

import java.sql.SQLException;

import org.mypack.model.StudentModel;
import org.springframework.jdbc.core.RowMapper;
public class StudentRowMapper implements RowMapper<StudentModel>{

	 @Override
	    public StudentModel mapRow(ResultSet rs, int rowNum) throws SQLException {

	        StudentModel model = new StudentModel();

	        model.setSid(rs.getInt("sid"));
	        model.setSname(rs.getString("sname"));
	        model.setSemail(rs.getString("semail"));
	        model.setScontact(rs.getString("scontact"));
	        model.setId(rs.getInt("id"));   // or setCid(...) if your foreign key is cid

	        return model;
	    }
}
