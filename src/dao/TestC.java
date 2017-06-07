package dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import model.TourModel;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import util.HibernateUtil;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.api.pipe.Tube;

import entities.Category;
import entities.Comment;
import entities.Contact;
import entities.Order;
import entities.Tour;
import entities.TourDetail;
import entities.User;

public class TestC extends ActionSupport {
	@Override
	public String execute() throws Exception {
		
			
		
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Comment tour = (Comment) session.get(Tour.class, 1);
					System.out.println(tour.getLiSubComments().size());
			session.getTransaction().commit();

			
			
		} catch (HibernateException e) {
			e.printStackTrace();
			System.out.println("Error: "+e.getMessage());
		}
		finally
		{
			session.close();
		}
		return "success";
	}
}