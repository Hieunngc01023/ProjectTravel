package adminDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Criteria;
import org.hibernate.Session;

import entities.Category;
import entities.Tour;
import util.HibernateUtil;
import adminModel.*;
public class TourDAO {
	
	
	// this method used to getListTours
	// Author:Hieu.
	// Date: 11/6/2017
	public List<TourModel> getListTours(){
		List<TourModel> listTourModels = new ArrayList<TourModel>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Criteria criteria = session.createCriteria(Tour.class);
			List<Tour> listTours = criteria.list();
			if(listTours.size() >0){
				for(Tour tour : listTours){
					TourModel tourModel = new TourModel();
					tourModel.setContent(tour.getContent());
					tourModel.setIdTour(tour.getIdTour());
					tourModel.setImageTitle(tour.getImageTitle());
					tourModel.setPlaceDropOff(tour.getPlaceDropOff());
					tourModel.setPlacePickUp(tour.getPlacePickUp());
					tourModel.setTitle(tour.getContent());
					tourModel.setCategory(tour.getCategory().getNameCategory());
					listTourModels.add(tourModel);
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
		return listTourModels;
	}
	// add new Tour
	//idcategory is id of Category, tourmodel is parameter is request by client send to Controller
	// Author: Hieu
	// Date: 11/6/2017
	public boolean addNewTour(String idcategory, TourModel tourmodel){
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		
		try {
			session.beginTransaction();
			Criteria criteria = session.createCriteria(Tour.class);
			Random random = new Random();
			String idTour ="";
			List<Tour> listTour = criteria.list();
			if(listTour.size() == 0){
				idTour = "tour"+1+"btv"+random.nextInt(1000);
			   }
			   else{
				   String idCategory = listTour.get(listTour.size() - 1).getIdTour();
				   int subString= Integer.parseInt(idCategory.substring(4, idCategory.indexOf("btv")));
				   idTour = "tour"+ ++subString +"btv"+random.nextInt(1000);
			   }
			
			Category category = (Category) session.get(Category.class, idcategory);
			
			Tour tour = new Tour();
			tour.setCategory(category);
			tour.setContent(tourmodel.getContent());
			tour.setIdTour(idTour);
			tour.setImageTitle(tourmodel.getImageTitle());
			tour.setPlaceDropOff(tourmodel.getPlaceDropOff());
			tour.setPlacePickUp(tourmodel.getPlacePickUp());
			tour.setTitle(tourmodel.getTitle());
			session.save(tour);
			
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
	// update old Tour by tourModel(parameters from client) and id of Category	
	// Author: Hieu
	// Dte 11/6/2017
	public boolean updateTour(TourModel tourModel, String idCategory){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Category category = (Category) session.get(Category.class, idCategory);
			Tour tour = (Tour) session.get(Tour.class, tourModel.getIdTour());
			tour.setCategory(category);
			tour.setContent(tourModel.getContent());
			tour.setImageTitle(tourModel.getImageTitle());
			tour.setPlaceDropOff(tourModel.getPlaceDropOff());
			tour.setPlacePickUp(tourModel.getPlacePickUp());
			tour.setTitle(tourModel.getTitle());
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
	
	
	
	/*Session session = HibernateUtil.getSessionFactory().openSession();
	try {
		session.beginTransaction();
		
		session.getTransaction().commit();
	} catch (Exception e) {
		session.getTransaction().rollback();
		System.out.println("Error: "+e.getMessage());
	}
	finally{
		session.close();
	}*/
}
