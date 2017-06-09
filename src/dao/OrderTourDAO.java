package dao;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import entities.Order;
import entities.TourDetail;
import entities.User;
import util.HibernateUtil;
import model.OrderModel;

public class OrderTourDAO {
	public static String idOrderNew;
	public static int totalPrice;
		public int getPriceAfterSale(int realPrice, int sale1, int sale2, int quantity){
			int price =0;
			if(quantity >= 15 && sale2 != 0)
				price = (realPrice - realPrice*sale2/100)*quantity;
			else if(quantity >= 15 && sale1 != 0)
				price = (realPrice - realPrice*sale1/100)*quantity;
			else if(quantity >= 6 && quantity <15 && sale1 != 0)
				price = (realPrice - realPrice*sale1/100)*quantity;
			else
				price = quantity*realPrice;
		return price;	
		}
		
		public boolean  executeOrder(OrderModel order){
			Session session = HibernateUtil.sessionFactory.openSession();
			try {
				session.beginTransaction();
					TourDetail tour = (TourDetail) session.get(TourDetail.class, order.getIdTourDetail() );
					if(order.getMember() > tour.getQuantitySeat())
						return false;
					
					// add User if didn't login 
					Query query = session.createQuery("from User where email = ?");
					query.setCacheable(true);
					query.setParameter(0, order.getEmail());
					User userEntity = (User) query.uniqueResult();					
					if(userEntity == null)
					{
						userEntity = new User();
						userEntity.setEmail(order.getEmail());
						userEntity.setAddress(order.getAddress());
						userEntity.setFullName(order.getFullName());
						userEntity.setPhoneNumber(order.getPhone());
						session.save(userEntity);												
					}
					else{
						// update User if email is exist in DB
						userEntity.setAddress(order.getAddress());
						userEntity.setFullName(order.getFullName());
						userEntity.setPhoneNumber(order.getPhone());
						session.update(userEntity);
					}
//					
//					// update TourDetail
					tour.setQuantitySeat(tour.getQuantitySeat() - order.getMember());
					// get ID order
					Random random = new Random();
					String idOrder = "";
				    Criteria criteria = 	session.createCriteria(Order.class);
					List<Order> listOrder = criteria.list();
					if(listOrder.size() == 0){
					      idOrder = "Order"+1+"btv"+random.nextInt(1000);
					}
					else {
					      String idOLDOrder = listOrder.get(listOrder.size()-1).getIdOrder();
					      int supString = Integer.valueOf(idOLDOrder.substring(5, idOLDOrder.indexOf("btv")));
					      idOrder = "Order"+ ++supString+"btv"+random.nextInt();					      
					}
					// save Order
					
					Order orderEntity = new Order();
					orderEntity.setIdOrder(idOrder);
					idOrderNew = idOrder;
					orderEntity.setModelPayment(order.getModelPayment());
					orderEntity.setNote(order.getNote());
					orderEntity.setPrice(getPriceAfterSale(tour.getRealPrice(), tour.getSale1(), tour.getSale2(), order.getMember()));
					totalPrice = getPriceAfterSale(tour.getRealPrice(), tour.getSale1(), tour.getSale2(), order.getMember());
					orderEntity.setQuanOrder(order.getMember());
					orderEntity.setStateMoney(order.getStateGetMoney());
					orderEntity.setTour(tour);
					orderEntity.setTimeCreated(new Date());
					orderEntity.setUser(userEntity);
					session.save(orderEntity);
					
				    session.getTransaction().commit();
				    
			} catch (Exception e) {				
				session.getTransaction().rollback();
				e.printStackTrace();
				System.out.println("Eroor: "+e.getMessage());
				return false;
			}
			finally{
				session.close();
			}
			return true;
		}
	
		
}
