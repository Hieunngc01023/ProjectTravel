package adminDAO;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;

import entities.Car;
import util.HibernateUtil;
import adminModel.*;
public class CarDAO {
	
	public List<CarModel> getListCars(){
		List<CarModel> listCars = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Criteria criteria = session.createCriteria(Car.class);
				List<Car> listCarEntities = criteria.list();
				
				if(listCarEntities.size() >0){
					for(Car car : listCarEntities){
						CarModel carModel = new CarModel();
						carModel.setBrand(car.getBrand());
						carModel.setContent(car.getContent());
						carModel.setFuel(car.getFuel());
						carModel.setGear(car.getFuel());
						carModel.setIdCar(car.getIdCar());
						carModel.setImageTitle(car.getImageTitle());
						carModel.setNameCar(car.getNameCar());
						carModel.setPrice(car.getPrice());
						carModel.setQuanitySeat(car.getQuanitySeat());
						carModel.setQuantityCar(car.getQuantityCar());
						listCars.add(carModel);

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
		return listCars;

	}
	
	public boolean addNewCar(CarModel carModel, File image, String filePath, String imageName){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			
			Random random = new Random();
			String duplicate = String.valueOf(random.nextInt(100000));
			
			String filediretory = filePath+"/"+"admin/admin-assets/img";
			String imageTitle = "admin-assets/img/"+duplicate+imageName;
			String filePathnew = filePath+"/admin/"+imageTitle;
			String imageNametoStore = duplicate+imageName;
			
			if(new File(filePathnew).exists()){
				return false;
			}
			File file = new File(filediretory, imageNametoStore);
			FileUtils.copyFile(image, file);
			
			Car car = new Car();
			car.setBrand(carModel.getBrand());
			car.setContent(carModel.getContent());
			car.setFuel(carModel.getFuel());
			car.setGear(carModel.getFuel());
			car.setImageTitle(imageNametoStore);
			car.setNameCar(carModel.getNameCar());
			car.setPrice(carModel.getPrice());
			car.setQuanitySeat(carModel.getQuanitySeat());
			car.setQuantityCar(carModel.getQuantityCar());
			session.save(car);
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
	
	public boolean UpdateCar(CarModel carModel, File image, String filePath, String imageName){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Car car = (Car) session.get(Car.class, carModel.getIdCar());
			Random random = new Random();
			String duplicate = String.valueOf(random.nextInt(100000));
			
			if(image != null){
			String filediretory = filePath+"/"+"admin/admin-assets/img";
			String imageTitle = "admin-assets/img/"+duplicate+imageName;
			String filePathnew = filePath+"/admin/"+imageTitle;
			String imageNametoStore = duplicate+imageName;
			
			if(new File(filePathnew).exists()){
				return false;
			}
			File file = new File(filediretory, imageNametoStore);
			FileUtils.copyFile(image, file);
			car.setImageTitle(imageNametoStore);
			
			}
			
			
			car.setBrand(carModel.getBrand());
			car.setContent(carModel.getContent());
			car.setFuel(carModel.getFuel());
			car.setGear(carModel.getFuel());
			car.setNameCar(carModel.getNameCar());
			car.setPrice(carModel.getPrice());
			car.setQuanitySeat(carModel.getQuanitySeat());
			car.setQuantityCar(carModel.getQuantityCar());
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
