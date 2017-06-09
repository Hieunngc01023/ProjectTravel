package dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import entities.Car;
import entities.Order;
import entities.OrderCar;
import entities.User;
import util.HibernateUtil;
import model.CarModel;
import model.OrderCarModel;

public class OrderCarDAO {
	public static String idOrderNew;
	public static int totalPrice;
	public boolean executeCarOrder(OrderCarModel order){
		Session session = HibernateUtil.sessionFactory.openSession();
		try {
			session.beginTransaction();
			Car car = (Car) session.get(Car.class, order.getIdCar());
			if(order.getQuantityRentCar() > car.getQuantityCar())
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
			
			// update Car 
			car.setQuantityCar(car.getQuantityCar() - order.getQuantityRentCar());
			
			// get ID order
			
			Random random = new Random();
			String idOrder = "";
		    Criteria criteria = 	session.createCriteria(OrderCar.class);
			List<OrderCar> listOrder = criteria.list();
			if(listOrder.size() == 0){
			      idOrder = "Order"+1+"btvCar"+random.nextInt(1000);
			}
			else {
			      String idOLDOrder = listOrder.get(listOrder.size()-1).getIdOrder();
			      int supString = Integer.valueOf(idOLDOrder.substring(5, idOLDOrder.indexOf("btvCar")));
			      supString = supString +2;
			      idOrder = "Order"+supString+"btvCar"+random.nextInt();					      
			}
			
			// saveOrder
			OrderCar orderCar = new OrderCar();
			orderCar.setIdOrder(idOrder);
			orderCar.setTimeCreated(new Date());
			orderCar.setModelPayment(order.getModelPayment());
			orderCar.setNote(order.getNote());
			orderCar.setStateGetMoney(order.getStateGetMoney());
			orderCar.setQuanOrder(order.getQuantityRentCar());
			orderCar.setPlaceRecieve(order.getPlaceRecieve());
			orderCar.setPlaceRender(order.getPlaceRender());
			orderCar.setStateDriver(order.getStateDriver());
			orderCar.setTimePickUp(new SimpleDateFormat("MM/dd/yyyy").parse(order.getTimePickUp()));
			orderCar.setTimeDropOff(new SimpleDateFormat("MM/dd/yyyy").parse(order.getTiemDropOff()));
			orderCar.setCar(car);
			orderCar.setUser(userEntity);
			idOrderNew = idOrder;
			totalPrice = getPrice(order.getTimePickUp(), order.getTiemDropOff(), order.getPlaceRecieve(), order.getPlaceRender(), order.getStateDriver(), car.getPrice());
			orderCar.setPrice(getPrice(order.getTimePickUp(), order.getTiemDropOff(), order.getPlaceRecieve(), order.getPlaceRender(), order.getStateDriver(), car.getPrice()));
			session.save(orderCar);
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
	
	 
	public int getPrice(String timPickUp, String timeDropOff, String placeRecieve, String placeRender, int stateDriver , int priceCar){
		int price  =0 ;		
		int days = 0;
			if(timPickUp.equals(timeDropOff)){
				days = 1;
			}
			else{
					try {
						days = new TourDAO().getDays(new SimpleDateFormat("MM/dd/yyyy").parse(timPickUp), new SimpleDateFormat("MM/dd/yyyy").parse(timeDropOff));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			price = days*priceCar;
			
			if(placeRecieve.equals("on, hn"))
				price += 100000;
			if(placeRender.equals("on, hn"))
				price += 100000;
			if(stateDriver == 1)
				price += 300000;
		return price;
		
	}
	
	
}
