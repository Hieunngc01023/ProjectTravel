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

import entities.Blog;
import entities.Car;
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
		
		Blog blog = new Blog();
		blog.setContent("Content");
		blog.setTitle("HaLong- Mua nang ha.");
		blog.setImageTitle("image");
		blog.setTimeCreated(new Date());
		
		Blog blog2 = new Blog();
		blog2.setContent("Content");
		blog2.setTitle("Quang binh- Than Thuong.");
		blog2.setImageTitle("image");
		blog2.setTimeCreated(new Date());
		
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, 1);
			blog.setUser(user);
			session.save(blog);
			session.save(blog2);
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
