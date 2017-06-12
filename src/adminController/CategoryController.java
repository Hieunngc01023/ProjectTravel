package adminController;

import adminDAO.CategoryDAO;

import com.opensymphony.xwork2.ActionSupport;

public class CategoryController extends ActionSupport {
	private String id;
	private String name;
	private String description;
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	
	public String update(){
		boolean flag = new CategoryDAO().updateCategory(id, name, description);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	public String addNew(){
		boolean flag = new CategoryDAO().addNewcategory(name, description);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
		
	}

}
