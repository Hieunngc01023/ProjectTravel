package controller;

import org.hibernate.Session;

import util.HibernateUtil;

import com.opensymphony.xwork2.ActionSupport;

import entities.Contact;

public class contactController extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String comments;
	private String popUp;
	public String getPopUp() {
		return popUp;
	}
	public void setPopUp(String popUp) {
		this.popUp = popUp;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	@Override
	public String execute() throws Exception {
		Contact contact = new Contact();
		contact.setContent(comments);
		contact.setEmail(email);
		contact.setFullName(name);
		Session session = HibernateUtil.getSessionFactory().openSession();
		popUp = "Cảm ơn quý khách đã đóng góp ý kiến.";
		try {
			session.beginTransaction();
			session.save(contact);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return "error";
		}
		finally{
			session.close();
		}				
		return "success";
	}

}
