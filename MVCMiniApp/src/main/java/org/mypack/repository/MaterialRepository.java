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




@Repository("materialRepo")
public class MaterialRepository {

	  @Autowired
      JdbcTemplate template;
      
      public boolean isSave(MaterialModel model) {
    	  int value = template.update("insert into studymaterial values('0',?,?,?)", new  PreparedStatementSetter() { 
    			
    			@Override
    			public void setValues(PreparedStatement ps)throws SQLException {
    			  ps.setString(1, model.getName());
    			  ps.setString(2, model.getMaterial().getOriginalFilename());
    			  ps.setInt(3, model.getCourse());
    		  }
    	  });
    	  return value > 0 ? true : false;
      }
      
      public List<MaterialModel> getAllStudyMaterial() {
  		List<MaterialModel> list = template.query("select * from studymaterial", new RowMapper<MaterialModel>() {

  			@Override
  			public  MaterialModel mapRow(ResultSet rs, int rowNum) throws SQLException {
  				MaterialModel model = new MaterialModel();
  				model.setId(rs.getInt(1));
  				model.setName(rs.getString(2));
  				model.setfileName(rs.getString(3));
  				model.setCourse(rs.getInt(4));
  				return model;
  			}
  			
  			
  		});
  		return list;
  	}
      public boolean isDelete(int materialId) {

    	    int value = template.update("DELETE FROM studymaterial WHERE smid=?", materialId );

    	    return value > 0;
    	}
      
      public boolean isUpdate(MaterialModel model) {

    	    int value = template.update(
    	        "UPDATE studymaterial SET topic=? WHERE smid=?",
    	        model.getName(),
    	        model.getId()
    	    );

    	    return value > 0;
    	}
}
