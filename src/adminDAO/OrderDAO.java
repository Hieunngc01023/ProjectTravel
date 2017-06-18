package adminDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;

import util.HibernateUtil;
import entities.Order;
import entities.TourDetail;
import adminModel.*;
public class OrderDAO {
	
	// to get All Order not depend on state;
	public OrderModel getOrderDetail(String idOrder){
		OrderModel model = new OrderModel();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Order orders = (Order) session.get(Order.class, idOrder);
						
						model.setIdOrder(orders.getIdOrder());	
						model.setModelPayment(orders.getModelPayment());
						model.setNote(orders.getNote());
						model.setPrice(orders.getPrice());
						model.setQuanOrder(orders.getQuanOrder());
						model.setStateMoney(orders.getStateMoney());
						model.setTimeCreated(orders.getTimeCreated().toString());
						model.setTourName(orders.getTour().getTour().getTitle());
						model.setUserName(orders.getUser().getFullName());
						model.setUserPhone(orders.getUser().getPhoneNumber());
					
				
					
				
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return model;
		
	}
	public List<OrderModel> getAllOrders(String keyword){
		List<OrderModel> listOders = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Query query = session.createQuery("from Order");
				List<Order> list = query.list();
				if(list.size() >0){
					for(Order orders: list){
						OrderModel model = new OrderModel();
						model.setIdOrder(orders.getIdOrder());	
						model.setModelPayment(orders.getModelPayment());
						model.setNote(orders.getNote());
						model.setPrice(orders.getPrice());
						model.setQuanOrder(orders.getQuanOrder());
						model.setStateMoney(orders.getStateMoney());
						model.setTimeCreated(orders.getTimeCreated().toString());
						model.setTourName(orders.getTour().getTour().getTitle());
						model.setUserName(orders.getUser().getFullName());
						model.setUserPhone(orders.getUser().getPhoneNumber());
						String allFields = model.toString();
						if(keyword.isEmpty())
						{
							listOders.add(model);	
						}
						else if(allFields.toLowerCase().contains(keyword.toLowerCase().trim()) ){
							listOders.add(model);
								
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
		return listOders;
		
	}
	
	public List<OrderModel> getListOrderbyState(int state , String keyword){
		List<OrderModel> listOders = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Query query = session.createQuery("from Order where stateMoney =?");
				query.setCacheable(true);
				query.setParameter(0, state);
				List<Order> list = query.list();
				if(list.size() >0){
					for(Order orders: list){
						OrderModel model = new OrderModel();
						model.setIdOrder(orders.getIdOrder());	
						model.setModelPayment(orders.getModelPayment());
						model.setNote(orders.getNote());
						model.setPrice(orders.getPrice());
						model.setQuanOrder(orders.getQuanOrder());
						model.setStateMoney(orders.getStateMoney());
						model.setTimeCreated(orders.getTimeCreated().toString());
						model.setTourName(orders.getTour().getTour().getTitle());
						model.setUserName(orders.getUser().getFullName());
						model.setUserPhone(orders.getUser().getPhoneNumber());
						String allFields = model.toString();
						if(keyword.isEmpty())
						{
							listOders.add(model);	
						}
						else if(allFields.toLowerCase().contains(keyword.toLowerCase().trim()) ){
							listOders.add(model);
								
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
		return listOders;
		
	}
	
	public boolean  deleteOrder(String idOrder){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Order order = (Order) session.get(Order.class, idOrder);
				TourDetail tourDetail = (TourDetail) session.get(TourDetail.class, order.getTour().getIdTourDeTail());
				tourDetail.setQuantitySeat(tourDetail.getQuantitySeat() + order.getQuanOrder());
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
	// to update Order to state got money when we got money from user.
	// Author :Hieu
	// Date: 12/6/2017
	public boolean  updateStateGetMoneyOrder(String idOrder , int state){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
		      Order order = (Order) session.get(Order.class, idOrder.trim());
		    
		      order.setStateMoney(state);
		      
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
