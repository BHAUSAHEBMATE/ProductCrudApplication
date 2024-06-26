package productCrud;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name ;
    private String description ;
    private long prize;


    public product() {
		// TODO Auto-generated constructor stub
	}
    
    
    
public product(int id, String name, String description, long prize) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.prize = prize;
	}



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
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public long getPrize() {
	return prize;
}
public void setPrize(long prize) {
	this.prize = prize;
}


@Override
public String toString() {
	return "product [id=" + id + ", name=" + name + ", description=" + description + ", prize=" + prize + "]";
}
}
