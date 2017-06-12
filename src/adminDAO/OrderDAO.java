package adminDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.classic.Session;

import util.HibernateUtil;
import entities.Order;
import adminModel.*;
public class OrderDAO {
	
	// to get All Order are Not getting money.
	public List<OrderModel> getAllOrdersNotGettingMoney(){
		List<OrderModel> listOders = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Query query = session.createQuery("from Order where stateMoney = 1 ");
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
						listOders.add(model);
					}
				}
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
			HibernateUtil.sutdown();
		}
		return listOders;
		
	}
	
	public boolean  deleteOrder(String idOrder){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Order order = (Order) session.get(Order.class, idOrder);
				session.delete(order);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return false;
		}
		finally{
			session.close();
			HibernateUtil.sutdown();
		}
		return true;
	}
	// to update Order to state got money when we got money from user.
	// Author :Hieu
	// Date: 12/6/2017
	public boolean  updateStateGetMoneyOrder(String idOrder){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
		Order order = 	(Order) session.get(Order.class, idOrder);
				order.setStateMoney(2);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
			return false;
		}
		finally{
			session.close();
			HibernateUtil.sutdown();
		}
		return true;
		
	}

}
