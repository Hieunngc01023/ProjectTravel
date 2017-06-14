package adminDAO;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import dao.TourDAO;
import entities.Car;
import entities.Order;
import entities.OrderCar;
import entities.TourDetail;
import util.HibernateUtil;
import adminModel.*;
public class OrderCarDAO {
	
	public List<OrderCarModel> getListOrderCar(){
		List<OrderCarModel> listordercars = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Criteria criteria = session.createCriteria(OrderCar.class);
				List<OrderCar> list = criteria.list();
				if(list.size() >0){
					for(OrderCar order: list){
						OrderCarModel carModel = new OrderCarModel();
						carModel.setNameUser(order.getUser().getFullName());
						carModel.setIdOrder(order.getIdOrder());
						carModel.setModelPayment(order.getModelPayment());
						carModel.setNote(order.getNote());
						carModel.setPlaceRecieve(order.getPlaceRecieve());
						carModel.setPlaceRender(order.getPlaceRender());
						carModel.setPrice(order.getPrice());
						carModel.setStateDriver(order.getStateDriver());
						carModel.setStateGetMoney(order.getStateGetMoney());
						carModel.setTimeCreated(order.getTimeCreated().toString());
						carModel.setTimeDropOff(order.getTimeDropOff().toString());
						carModel.setTimePickUp(order.getTimePickUp().toString());
						carModel.setNameCar(order.getCar().getNameCar());
						listordercars.add(carModel);
					}
					
				}		
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return listordercars;
		
	}
	public boolean  deleteOrder(String idOrder){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				OrderCar order = (OrderCar) session.get(OrderCar.class, idOrder);
				Car car = (Car) session.get(Car.class, order.getCar().getIdCar());
				car.setQuantityCar(car.getQuantityCar() + order.getQuanOrder());
				session.delete(order);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return false;
		}
		finally{
			session.close();
		}
		return true;
	}
	
	public boolean  updateStateGetMoneyOrder(String idOrder , int state){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
		      OrderCar order = (OrderCar) session.get(OrderCar.class, idOrder.trim());
		    
		      order.setStateGetMoney(state);
		      
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return false;
		}
		finally{
			session.close();
		}
		return true;
		
	}
	public boolean cancelOrderCar(String idOrder)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
		      OrderCar order = (OrderCar) session.get(OrderCar.class, idOrder.trim());
		      int distance = new TourDAO().getDays(new Date(),order.getTimePickUp() );
		      if(distance <0)
		    	  return false;
		      if(distance == 0){
		    	  order.setPrice((int) (order.getPrice()*0.4));
		      }
		      else if(distance == 1 || distance ==2){
		    	  order.setPrice((int) (order.getPrice()*0.3));
		      }
		      else {
		    	  order.setPrice((int) (order.getPrice()*0.2));
		    	  System.out.println("Chay vao day ");
		      }
		      order.setStateGetMoney(2);
		      Car car = (Car) session.get(Car.class,order.getCar().getIdCar() );
		      car.setQuantityCar(car.getQuantityCar() +1);
		      
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return false;
		}
		finally{
			session.close();
		}
		return true;
		
	}

}
