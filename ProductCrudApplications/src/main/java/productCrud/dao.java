package productCrud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Component
public class dao {
	
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public void create(product Product ) {
		
		this.hibernateTemplate.save(Product);
		
		
	}
	
	
	@Transactional
	public List<product> getproducts(){
		
		List<product> products=this.hibernateTemplate.loadAll(product.class);
		
		
		return products;
	}

	
	 // delete singal product
	
	
	@Transactional
	public void deleteProduct(int id) {
		
		product p =this.hibernateTemplate.load(product.class, id);
		
	 this.hibernateTemplate.delete(p);
		
		}
	 
	@Transactional
	public product getSingleproducts(int id){
		
		return  this.hibernateTemplate.get(product.class, id);
		
	}

	@Transactional
	public void update(product Product ) {
		
		this.hibernateTemplate.update(Product);
		
		
	}
	
	
	
		 
	 }
	
	
	
	
