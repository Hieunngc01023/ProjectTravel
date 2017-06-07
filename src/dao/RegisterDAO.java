package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.*;
import util.HibernateUtil;

public class RegisterDAO {
	public boolean register(String fullname, String email, String password){
			Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
					Query query = session.createQuery("from User where email = ?");
					query.setCacheable(true);
					query.setParameter(0, email);
					List<User> listUser = query.list();
					if(listUser.size() == 1){
						return false;
					}
					User user = new User();
					user.setEmail(email);
					user.setFullName(fullname);
					user.setPassword(password);
					session.save(user);
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return true;
	}
	

}
