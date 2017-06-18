package adminDAO;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

import adminModel.OrderCarModel;
import adminModel.OrderDasbodCar;
import adminModel.OrderDashbos;
import adminModel.OrderModel;
import entities.Car;
import entities.Order;
import entities.OrderCar;
import entities.Tour;
import util.HibernateUtil;

public class DashBodDAO {
	
	public long getTotalTOur(){
		long total =0;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Criteria criteria = session.createCriteria(Tour.class);
				 criteria.setProjection(Projections.count("idTour"));
				 total =  (long) criteria.uniqueResult();
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
		return total;
	}
	
	public int getTotalOrderTour(){
		int total = 0;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Order where stateMoney = 1");
			query.setCacheable(true);
			total = query.list().size();
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
		return total;
		
	}
	public int getTotalOrderCAR(){
		int total = 0;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from OrderCar where stateGetMoney = 1 or stateGetMoney =2 ");
			query.setCacheable(true);
			total = query.list().size();
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
		return total;
		
	}
	
	public int getTotalUser(){
		int total = 0;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from User where password is not null and email is not null ");
			query.setCacheable(true);
			total = query.list().size();
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
		return total;
		
	}
	
	
	
	public OrderDasbodCar getTotalOrderdasbodCar(String timBegin, String timeOff){
		
	
		OrderDasbodCar orderDasbos = new OrderDasbodCar();
		List<OrderCarModel> lisOrderModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			
			Query query = null;
			if(timBegin.equals("")){
				Date off = new SimpleDateFormat("MM/dd/yyyy").parse(timeOff);
				query = session.createQuery(" from OrderCar where timeCreated = ? and stateGetMoney =1 or stateGetMoney =2");
				query.setParameter(0, off);
				query.setCacheable(true);
			}
			else if(timeOff.equals("")){
				Date begin = new SimpleDateFormat("MM/dd/yyyy").parse(timBegin);
				query = session.createQuery("from OrderCar where timeCreated = ? and stateGetMoney =1 or stateGetMoney =2 ");
				query.setParameter(0, begin);
				query.setCacheable(true);
			}
			else {
				Date begin = new SimpleDateFormat("MM/dd/yyyy").parse(timBegin);
				Date off = new SimpleDateFormat("MM/dd/yyyy").parse(timeOff);
				query = session.createQuery("from OrderCar where timeCreated between  ? and ? and stateGetMoney =1 or stateGetMoney =2");
				query.setParameter(0, begin);
				query.setParameter(1, off);
			}
			long  Total_price_history = 0;
			int Total_order =0;
			List<OrderCar> list = query.list();
			if(list.size() >0){
				for(OrderCar order : list){
					OrderCarModel orderModel = new OrderCarModel();
					orderModel.setIdOrder(order.getIdOrder());
					orderModel.setNameCar(order.getCar().getNameCar());
					orderModel.setPrice(order.getPrice());
					orderModel.setModelPayment(order.getModelPayment());
					orderModel.setStateGetMoney(order.getStateGetMoney());
					orderModel.setNameUser(order.getUser().getFullName());
					
					lisOrderModels.add(orderModel);
					++Total_order ;
					Total_price_history = Total_price_history + order.getPrice();
	
				}
			}
			orderDasbos.setListOrderCar(lisOrderModels);
			orderDasbos.setTotalPrice(Total_price_history);
			orderDasbos.setTotalOrder(Total_order);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return orderDasbos;
		
	}
	
	
	public OrderDashbos getTotalOrderbyTime(String timBegin, String timeOff){
		OrderDashbos orderDasbos = new OrderDashbos();
		List<OrderModel> lisOrderModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			
			Query query = null;
			if(timBegin.equals("")){
				Date off = new SimpleDateFormat("MM/dd/yyyy").parse(timeOff);
				query = session.createQuery(" from Order where timeCreated = ? and stateMoney =1");
				query.setParameter(0, off);
				query.setCacheable(true);
			}
			else if(timeOff.equals("")){
				Date begin = new SimpleDateFormat("MM/dd/yyyy").parse(timBegin);
				query = session.createQuery("from Order where timeCreated = ? and stateMoney =1");
				query.setParameter(0, begin);
				query.setCacheable(true);
			}
			else {
				Date begin = new SimpleDateFormat("MM/dd/yyyy").parse(timBegin);
				Date off = new SimpleDateFormat("MM/dd/yyyy").parse(timeOff);
				query = session.createQuery("from Order where timeCreated between  ? and ? and stateMoney =1");
				query.setParameter(0, begin);
				query.setParameter(1, off);
			}
			long  Total_price_history = 0;
			int Total_order =0;
			List<Order> list = query.list();
			if(list.size() >0){
				for(Order order : list){
					OrderModel model = new OrderModel();
					model.setIdOrder(order.getIdOrder());
					model.setNameTour(order.getTour().getTour().getTitle());
					model.setPrice(order.getPrice());
					model.setModelPayment(order.getModelPayment());
					model.setStateMoney(order.getStateMoney());
					++Total_order ;
					Total_price_history = Total_price_history + order.getPrice();
					lisOrderModels.add(model);
	
				}
			}
			orderDasbos.setListOrderModel(lisOrderModels);
			orderDasbos.setTotalPrice(Total_price_history);
			orderDasbos.setTotalOrder(Total_order);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return orderDasbos;
	}
	
	
	
	public List<OrderModel> getLatestOrder(){
		List<OrderModel> lisOrderModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from Order order by timeCreated desc");
			query.setCacheable(true);
			List<Order> list = query.list();
			int plus =0;
			if(list.size() >0){
				for(Order order : list){
					plus++;
					OrderModel model = new OrderModel();
					model.setIdOrder(order.getIdOrder());
					model.setNameTour(order.getTour().getTour().getTitle());
					model.setPrice(order.getPrice());
					model.setModelPayment(order.getModelPayment());
					model.setStateMoney(order.getStateMoney());
					lisOrderModels.add(model);
					if(plus == 7){
						break;
					}
					
					
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
		return lisOrderModels;
	} 
	public List<OrderCarModel> getLatestOrderCar(){
		List<OrderCarModel> lisOrderModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from OrderCar order by timeCreated desc");
			query.setCacheable(true);
			List<OrderCar> list = query.list();
			int plus =0;
			if(list.size() >0){
				for(OrderCar order : list){
					plus++;
					OrderCarModel orderModel = new OrderCarModel();
					orderModel.setIdOrder(order.getIdOrder());
					orderModel.setNameCar(order.getCar().getNameCar());
					orderModel.setPrice(order.getPrice());
					orderModel.setModelPayment(order.getModelPayment());
					orderModel.setStateGetMoney(order.getStateGetMoney());					
					lisOrderModels.add(orderModel);
					if(plus == 7){
						break;
					}
					
					
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
		return lisOrderModels;
	} 
	
	

}
