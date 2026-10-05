package org.mypack.controller;

import org.mypack.model.CourseModel;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;

import org.mypack.model.MaterialModel;
import java.io.*;
import java.util.*;
import org.mypack.service.CourseService;
import org.mypack.service.StudyMaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("upload")
public class UploadController {

	@Autowired
	CourseService courseService;
	
	@Autowired
	StudyMaterialService materialService;
	
	@RequestMapping("/material")
	public String uploadMaterial(Map<String, List<CourseModel>>map) {
		List<CourseModel> list = courseService.getAllCourses();
		map.put("clist", list);
		return "uploadmaterial";
	}
	
	@RequestMapping(value="/savematerial", method=RequestMethod.POST)
	public String saveMaterial(MaterialModel model, HttpServletRequest request, Map<String, String>map) throws IllegalStateException, IOException  {
		System.out.println("Upload Controller ");
		String topicName = model.getName();
		int cid = model.getCourse();
		
		MultipartFile fileData = model.getMaterial();
		System.out.println(topicName);
		System.out.println(cid);
		System.out.println(fileData.getOriginalFilename());
		
		try {
		String projPath = request.getServletContext().getRealPath("/");
		File f = new File(projPath + "studymaterial");
	
		if(!f.exists()) {
			f.mkdir();
		}
		projPath = projPath+"studymaterial\\"+fileData.getOriginalFilename();
		System.out.println("In try " +projPath);
		
		byte b[] = fileData.getBytes();
		File f1 = new File(projPath);
		FileOutputStream fout = new FileOutputStream(f1);
		fout.write(b);
		fout.close();
		
		
		boolean b1 = materialService.isSave(model);
		if(b1) {
			map.put("msg", "File added Successfully.......");
		}
		else {
			map.put("msg", "File not added Successfully.......");
		}
		
		} catch(IllegalStateException | IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return "uploadmaterial";
	}
	@GetMapping("/viewstudymaterial")
	public String viewStudyMaterial(Map<String, List<MaterialModel>>map) {
		List<MaterialModel> list = materialService.getAllStudyMaterial();
		map.put("mlist", list);
		return "viewstudymaterial";
		
	}
	 
	@GetMapping("/delmaterial")
	public RedirectView viewstudymaterial(@RequestParam("smid") Integer id) {
		boolean result = materialService.isDelete(id);
		RedirectView rv = new RedirectView();
		rv.setUrl("viewstudymaterial");
		return rv;
	}

	@GetMapping("/updmaterial")
	public String updateCourse(@RequestParam("smid") Integer smid, @RequestParam("name") String name,
			Map<String, String> map) {
		map.put("smid", "" + smid);
		map.put("name", name);
		return "updatematerial";
	}
	
	@PostMapping("/updatematerial")
	public String updateMaterial(MaterialModel model,
	                             Map<String, String> map) {

	    boolean result = materialService.isUpdate(model);

	    if (result) {
	        map.put("msg", "Study Material Updated Successfully...");
	    } else {
	        map.put("msg", "Study Material Not Updated...");
	    }

	    return "updatematerial";
	}
	
	@GetMapping("/download")
	public void downloadMaterial(@RequestParam("fileName") String fileName,
	                             HttpServletResponse response,
	                             HttpServletRequest request) throws IOException {

	    // Get project deployed path
	    String projectPath = request.getServletContext().getRealPath("/");

	    // Create file path
	    File file = new File(projectPath + "studymaterial/" + fileName);

	    // Check file exists
	    if (!file.exists()) {
	        response.setContentType("text/plain");
	        response.getWriter().write("File not found");
	        return;
	    }

	    // Set content type
	    response.setContentType("application/octet-stream");

	    // Tell browser this is a downloadable file
	    response.setHeader(
	        "Content-Disposition",
	        "attachment; filename=\"" + file.getName() + "\""
	    );

	    // Set file size
	    response.setContentLengthLong(file.length());

	    // Read file and send to browser
	    FileInputStream fis = new FileInputStream(file);
	    OutputStream os = response.getOutputStream();

	    byte[] buffer = new byte[1024];
	    int bytesRead;

	    while ((bytesRead = fis.read(buffer)) != -1) {
	        os.write(buffer, 0, bytesRead);
	    }

	    fis.close();
	    os.flush();
	}
	
	
}
