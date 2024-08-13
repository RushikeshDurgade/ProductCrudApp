package productcrudapp.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.dto.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao dao;
	
	

	@RequestMapping("/")
	public String home(Model model){
		List<Product> products=dao.getProducts();
		model.addAttribute("product",products);
		return "index";
	}
	
	// show add product from
	
	@RequestMapping("/add-product")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "add_product";
	}
	
	@RequestMapping("/handle-product")
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		dao.createProduct(product);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	//delete handler
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId")int productId,HttpServletRequest request) {
		this.dao.deleteProduct(productId);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update-product/{productId}")
	public String updateform(@PathVariable("productId")int productId,Model model) {
		Product product = this.dao.getProduct(productId);
		model.addAttribute("product",product);
		return "update-form";
	}
}
