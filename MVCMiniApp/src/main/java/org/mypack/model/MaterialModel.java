package org.mypack.model;
import org.springframework.web.multipart.MultipartFile;

public class MaterialModel {

	private int id; 
	private String name;
	private MultipartFile material;
	private String fileName;
	private int course;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getMaterial() {
		return material;
	}
	public void setMaterial(MultipartFile material) {
		this.material = material;
	}
	public String getfileName() {
	    return fileName;
	}

	public void setfileName(String fileName) {
	    this.fileName = fileName;
	}
	public int getCourse() {
		return course;
	}
	public void setCourse(int course) {
		this.course = course;
	}
	
}
