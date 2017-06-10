package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.Order;
import entities.OrderCar;
import entities.TourDetail;
import entities.User;
import util.HibernateUtil;
import model.*;
public class HistoryUserDAO {
	
	// THis method used to get All Tours History by one User.
	// is specified by email of User -> email parameter.
	//Author Hieu
	// Date 6/10/2017
	public List<OrderTourHistoryUserModel> getListtourHistor(String email){
		List<OrderTourHistoryUserModel> listOrderTour = new ArrayList<OrderTourHistoryUserModel>();
			Session session = HibernateUtil.getSessionFactory().openSession();
			try {
				session.beginTransaction();	
			    Query query = session.createQuery("from User where email =?");
			    query.setCacheable(true);
			    query.setParameter(0, email);
			    User user = (User) query.uniqueResult();
				List<Order> orders = user.getListOrder();
				if(orders.size() >0){
					for(Order orderEntity : orders ){
					TourDetail tourDetail =	orderEntity.getTour();
					OrderTourHistoryUserModel orhistory = new OrderTourHistoryUserModel();
					orhistory.setIdOrder(orderEntity.getIdOrder());
					orhistory.setQuantityOrder(orderEntity.getQuanOrder());
					orhistory.setTotalPrice(orderEntity.getPrice());
					orhistory.setPlacePickup(tourDetail.getTour().getPlacePickUp());	
					orhistory.setTimeBegin(tourDetail.getTimeBegin());
					orhistory.setQuantityDate(new TourDAO().getDays(tourDetail.getTimeBegin(), tourDetail.getTimeOff()));
					orhistory.setTitle(tourDetail.getTour().getTitle());
					listOrderTour.add(orhistory);
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
		
		return listOrderTour;
		
	}
	
	public List<OrderCarModel> getListOrderCarHistory(String email){
		List<OrderCarModel> listOrderCarsHis = new ArrayList<>();
			
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();	
		    Query query = session.createQuery("from User where email =?");
		    query.setCacheable(true);
		    query.setParameter(0, email);
		    User user = (User) query.uniqueResult();
				List<OrderCar> listCars = user.getListOrderCars();
				if(listCars.size() >0){
					for(OrderCar orderEntity : listCars){
						OrderCarModel order = new OrderCarModel();
						order.setNameCar(orderEntity.getCar().getNameCar());
						order.setIdOrder(orderEntity.getIdOrder());
						order.setTimePickUp(orderEntity.getTimePickUp().toString());
						order.setTiemDropOff(orderEntity.getTimeDropOff().toString());
						order.setPlaceRecieve(orderEntity.getPlaceRecieve());
						order.setPlaceRender(orderEntity.getPlaceRender());
						order.setStateDriver(orderEntity.getStateDriver());
						order.setTotalPrice(orderEntity.getPrice());
						listOrderCarsHis.add(order);
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
	
		
		return listOrderCarsHis;
	}
	public UserModel getUser(String email){
		UserModel usermodel = new UserModel();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from User where email =?");
		    query.setCacheable(true);
		    query.setParameter(0, email);
		    User user = (User) query.uniqueResult();
		   usermodel.setId(user.getId());
		   usermodel.setEmail(user.getEmail());
		   usermodel.setFullName(user.getFullName());
		   usermodel.setAddress(user.getAddress());
		   usermodel.setPassword(user.getPassword());
		   usermodel.setPhoneNumber(user.getPhoneNumber());
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
		}
		finally{
			session.close();
		}
		return usermodel;
	}
	
}
