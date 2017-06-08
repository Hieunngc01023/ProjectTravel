package dao;

import java.util.ArrayList;
import java.util.List;

import model.CarModel;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import entities.Car;

public class CarDAO {
	
	public List<CarModel> getListCars(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<CarModel> listCarModel = new ArrayList<>();
		try {
			session.beginTransaction();
				Query query = session.createQuery("from Car");
				List<Car> listCar = query.list();
				 if(listCar.size() >0){
					 for(Car car : listCar){
						 CarModel carModel = new CarModel();
						 carModel.setIdCar(car.getIdCar());
						 carModel.setNameCar(car.getNameCar());
						 carModel.setImageTitle(car.getImageTitle());
						 carModel.setGear(car.getGear());
						 carModel.setPrice(car.getPrice());
						 listCarModel.add(carModel);
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
		return listCarModel;
	}
	public CarModel getCarDetails(int idCar){
		CarModel carModel  = new CarModel();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Car car = 	(Car) session.get(Car.class, idCar);
			if(car != null){
				carModel.setContent(car.getContent());
				carModel.setGear(car.getGear());
				carModel.setIdCar(car.getIdCar());
				carModel.setImageTitle(car.getImageTitle());
				carModel.setNameCar(car.getNameCar());
				carModel.setPrice(car.getPrice());
				carModel.setQuanitySeat(car.getQuanitySeat());
				carModel.setQuantityCar(car.getQuantityCar());
				carModel.setBrand(car.getBrand());
			}
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return carModel;
	}
	
}
