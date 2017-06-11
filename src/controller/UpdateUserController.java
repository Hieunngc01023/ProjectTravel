package controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import util.HibernateUtil;

import com.opensymphony.xwork2.ActionSupport;

import entities.User;

public class UpdateUserController extends ActionSupport {
	private String fullname;
	private int idUser;
	private String address;
	private String password;
	private int phone;
	
	
	
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
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

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String updateName(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, idUser);
			user.setFullName(fullname);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			return ERROR;
		}
		finally{
			session.close();
		}
		return SUCCESS;
	}
	
	public String updatePassword(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, idUser);
			user.setPassword(password);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			return ERROR;
		}
		finally{
			session.close();
			
		}
		return SUCCESS;
	}
	public String updateAddress(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, idUser);
			user.setAddress(address);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			return ERROR;
		}
		finally{
			session.close();
			
		}
		return SUCCESS;
	}
	public String updatePhone(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, idUser);
			user.setPhoneNumber(phone);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			return ERROR;
		}
		finally{
			session.close();
			
		}
		return SUCCESS;
	}


	
	
	
}
