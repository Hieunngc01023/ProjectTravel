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
		
		Car car = new Car();
		car.setBrand("Toyota");
		car.setContent("Ok fine");
		car.setFuel(2);
		car.setGear(1);
		car.setImageTitle("image");
		car.setNameCar("Toyota fortuner");
		car.setPrice(1000000);
		car.setQuanitySeat(7);
		car.setQuantityCar(10);
		
		Car car2 = new Car();
		car2.setBrand("Toyota camry");
		car2.setContent("Ok fine");
		car2.setFuel(2);
		car2.setGear(1);
		car2.setImageTitle("image");
		car2.setNameCar("Toyota fortuner");
		car2.setPrice(800000);
		car2.setQuanitySeat(4);
		car2.setQuantityCar(8);

		Car car3 = new Car();
		car3.setBrand("Honda Acula");
		car3.setContent("Ok fine");
		car3.setFuel(2);
		car3.setGear(2);
		car3.setImageTitle("image");
		car3.setNameCar("Toyota fortuner");
		car3.setPrice(1200000);
		car3.setQuanitySeat(4);
		car3.setQuantityCar(6);
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.save(car);
			session.save(car2);
			session.save(car3);
					
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
