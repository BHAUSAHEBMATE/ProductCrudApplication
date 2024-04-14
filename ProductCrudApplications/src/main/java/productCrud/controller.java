package productCrud;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	

	@Autowired
	dao Dao;
	
	
	@RequestMapping("/home")
	public String home(Model model) {
		

		List<product> products=     this.Dao.getproducts();
		model.addAttribute("product",products);
		System.out.println(products);

		
		return "index";
	}
	
	
	@RequestMapping("addproduct")
	public String addProduct() {
		
		System.out.println("this is working");
		
		return "add_product_form";
		
	}
	
	

	@RequestMapping("/register")
	public String register(@ModelAttribute product Product) {
		
		System.out.println("register is working");
		
		this.Dao.create(Product);
		
		return "redirect:/home";
		
		
	}
	


	@RequestMapping("/update")
	public String update(@ModelAttribute product Product) {
			
		this.Dao.update(Product);
		
		return "redirect:/home";
		
		
	}
	

@RequestMapping("/delete/{id}")
public String deleteProduct(@PathVariable int id) {
	
	
	this.Dao.deleteProduct(id);
	
	return "redirect:/home";
	
	}


@RequestMapping("edit/{id}")
public String get(@PathVariable int id, Model model){
	   product pr =this.Dao.getSingleproducts(id);
	model.addAttribute("prod", pr);
	   System.out.println(pr);
      return "edit";
	
}





}
