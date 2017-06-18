package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDAO;

public class AuthenticationAction extends ActionSupport implements SessionAware {	
	private Map<String, Object> sessionMap;
	private String stateLogin;
	private String email;
	private String password;
	public String getStateLogin() {
		return stateLogin;
	}

	public void setStateLogin(String stateLogin) {
		this.stateLogin = stateLogin;
	}

	public String login(){
		// Check email is already stored in DB
		if(sessionMap.containsKey("email") && sessionMap.get("email").equals(email)){
			return SUCCESS;
		}
		// if no email stored in DB		
		if(email != null && password !=null && new UserDAO().checkUser(email, password) == true){
			sessionMap.put("email", email);
			if(email.endsWith("admin@admin"))
				return INPUT;			
			return SUCCESS;
		}
		else{
			stateLogin= "Bạn nhập sai email hoặc password!";
			return INPUT;
		}
		
	}
	
	public String logout(){
			if(sessionMap.containsKey("email"))
				sessionMap.remove("email");
			return SUCCESS;
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
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
		
	}
}
