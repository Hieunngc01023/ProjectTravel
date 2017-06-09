package dao;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.Car;
import util.HibernateUtil;
import model.*;
public class SearchCarDAO {
	
	
	// This method used to search Cars by nameCar(title argument) and brand(brand argument)
	// author: Hieu
	// Date: 6/9/2017
	public Set<CarModel> getListSearchCar(String title, String brand){
		Set<CarModel> setCars = new HashSet<>();
		
		Session session = new HibernateUtil().getSessionFactory().openSession();
		
		try {
			session.beginTransaction();
			if(title != null){
				if(!title.isEmpty()){
			Query queryTitel = session.createQuery("from Car where nameCar =?");
			queryTitel.setCacheable(true);
			queryTitel.setParameter(0, title);
			List<Car> listCar = queryTitel.list();
			if(listCar.size() >0){
				for(Car car : listCar){
					CarModel carmodel = new CarModel();
					carmodel.setIdCar(car.getIdCar());
					carmodel.setNameCar(car.getNameCar());
					carmodel.setImageTitle(car.getImageTitle());
					carmodel.setGear(car.getGear());
					 carmodel.setPrice(car.getPrice());
					 setCars.add(carmodel);
					
				}
				
			}}
			}
			if(brand != null){
				if(!brand.isEmpty()){
					Query queryBrand  = session.createQuery("from Car where brand = ?");
					queryBrand.setCacheable(true);
					queryBrand.setParameter(0, brand);
					List<Car> listCar = queryBrand.list();
					if(listCar.size() > 0){
						for(Car car : listCar){
							CarModel carmodel = new CarModel();
							carmodel.setIdCar(car.getIdCar());
							carmodel.setNameCar(car.getNameCar());
							carmodel.setImageTitle(car.getImageTitle());
							carmodel.setGear(car.getGear());
							 carmodel.setPrice(car.getPrice());
							 setCars.add(carmodel);
							
						}
						
					}
					
				}
				
			}
			
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error here: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
		
		return setCars;
	}

}
