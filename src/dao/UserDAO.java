package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import entities.*;
public class UserDAO {
	// This method used to check mail and password, if they are same -> return true
	// author: Hieu
	// Date: 05/06/2017
	public boolean checkUser(String email, String password){
		Session session = HibernateUtil.getSessionFactory().openSession();
		boolean check = false;
		try {
			session.beginTransaction();
				Query query = session.createQuery("from User where email =? and password = ? ");
				query.setCacheable(true);
				query.setParameter(0, email);
				query.setParameter(1, password);
				List<User> listUser = query.list();
				if(listUser.size() == 1)
					check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return check;
	}
	public User getUserDetail(String email){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery("from User where email =?");
		query.setCacheable(true);
		query.setParameter(0, email);
		User user = (User) query.uniqueResult();
		return user;
	}

}
