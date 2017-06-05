package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	public static SessionFactory sessionFactory;
	// This static blog used to get initialize sessionFactory at the time load Class HibernateUtil
	// Author: Hieu
	// 5/28/2017
	static{
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Exception e) {
			System.out.println("Initial Sessionfactory Fail: "+e.getMessage());
		}
	}
	// This method used to get instance of SessionFactory
	// Author: Hieu
	// Date: 5/28/2017
	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}
	
}
