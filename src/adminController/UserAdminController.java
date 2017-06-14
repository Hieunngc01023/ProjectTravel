package adminController;

import adminDAO.UserDAO;
import adminModel.UserModel;

import com.opensymphony.xwork2.ActionSupport;

public class UserAdminController extends ActionSupport{
	private int id;
	private String fullName;
	private String email;
	private int phoneNumber;
	private String address;
	
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String updateUser(){
			UserModel userModel = new UserModel();
			userModel.setAddress(address);
			userModel.setEmail(email);
			userModel.setFullName(fullName);
			userModel.setId(id);
			userModel.setPassword(password);
			userModel.setPhoneNumber(phoneNumber);
			boolean flag = new UserDAO().UpdateUser(userModel);
			if(flag == true)
				return SUCCESS;
			else
				return ERROR;	
	}
	public String addUser(){
		
		UserModel userModel = new UserModel();
		userModel.setAddress(address);
		userModel.setEmail(email);
		userModel.setFullName(fullName);
		userModel.setPassword(password);
		userModel.setPhoneNumber(phoneNumber);
		boolean flag = new UserDAO().addUser(userModel);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	
	

}
