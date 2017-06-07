package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.RegisterDAO;

public class RegisterController extends ActionSupport implements SessionAware{
	private String fullname;
	private String email;
	private String password;
	private String stateRegister;
	public String getStateRegister() {
		return stateRegister;
	}

	public void setStateRegister(String stateRegister) {
		this.stateRegister = stateRegister;
	}
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String execute() throws Exception {
		boolean checkRegister = new RegisterDAO().register(fullname, email, password);
		if(checkRegister == true)
		{
			session.put("email", email);
			stateRegister= "Bạn vừa đăng ký thành công";
			return SUCCESS;
		}
		stateRegister = "Email đã tồn tại";
		return INPUT;
		
		
	}
	
	
}
