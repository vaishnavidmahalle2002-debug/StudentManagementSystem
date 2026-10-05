package org.mypack.config;
import org.springframework.context.annotation.Bean;



import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"org.mypack"})
public class MVCConfig {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		
InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean(name="dataSourse")
	public DriverManagerDataSource getDataSource() {
		DriverManagerDataSource dataSource	= new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/mvcproject");
		dataSource.setUsername("root");
		dataSource.setPassword("RootSecure@04");
		return dataSource;
		
	}
	@Bean(name="template")
	public JdbcTemplate getTemplate() {
		return new JdbcTemplate(this.getDataSource());
	}
	@Bean
	public MultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}
