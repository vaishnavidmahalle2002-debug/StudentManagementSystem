package org.mypack.config;

import org.springframework.web.WebApplicationInitializer;

import jakarta.servlet.MultipartConfigElement;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;

public class WebAppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext)throws ServletException {
		
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
		context.register(MVCConfig.class);
		
		DispatcherServlet ds = new DispatcherServlet(context);
		ServletRegistration.Dynamic dynamic = servletContext.addServlet("dispatcher", ds);
		
		MultipartConfigElement config = new MultipartConfigElement(System.getProperty("java.io.tmpdir"));
		dynamic.setMultipartConfig(config);
		
		dynamic.setLoadOnStartup(1);
		dynamic.addMapping("/");
	}
}
