package org.mypack.controller;

import org.mypack.model.Product;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
public class ProductController {

List<Product> list = new ArrayList<Product>();
	
	
	@GetMapping("/viewproduct")
	public Product getProduct() {
		Product p = new Product();
		p.setId(1);;
		p.setName("Mobile");
		p.setPrice(10000);
		return p;
	}
	
	@GetMapping("/viewallprod")
	public List<Product>getAllProductList() {
		
		list.add(new Product("TV", 1, 40000));
		list.add(new Product("MOBILE", 2, 20000));
		list.add(new Product("LAPTOP", 3, 60000));
		
		return list;
	}

}





	
	
//	@PostMapping("/save")
//	public String saveProduct(@RequestBody Product model) {
//		return "" ;
//		
//	}