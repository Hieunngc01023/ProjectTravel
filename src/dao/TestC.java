package dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import model.TourModel;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import util.HibernateUtil;
import adminDAO.CategoryDAO;
import adminDAO.TourDAO;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.api.pipe.Tube;

import entities.Blog;
import entities.Car;
import entities.Category;
import entities.Comment;
import entities.CommentBlog;
import entities.Contact;
import entities.Order;
import entities.SubCommentBlog;
import entities.Tour;
import entities.TourDetail;
import entities.User;
import adminDAO.*;
public class TestC extends ActionSupport {
	@Override
	public String execute() throws Exception {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {

			session.beginTransaction();
			User user = (User) session.get(User.class, 1);
			Tour tour = (Tour) session.get(Tour.class, "tour1btv303");
			Comment comment = new Comment();
			comment.setUser(user);
			
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
