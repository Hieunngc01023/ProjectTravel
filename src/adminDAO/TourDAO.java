package adminDAO;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import entities.Category;
import entities.Tour;
import entities.TourDetail;
import util.HibernateUtil;
import adminModel.*;
public class TourDAO {
	
	
	// this method used to getListTours
	// Author:Hieu.
	// Date: 11/6/2017
	//  TourModel of adminModel package
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
			HibernateUtil.sutdown();
		}
		return listTourModels;
	}
	// add new Tour
	//idcategory is id of Category, tourmodel is parameter is request by client send to Controller
	// TourModel of adminModel package
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
			HibernateUtil.sutdown();
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
			HibernateUtil.sutdown();
		}
		return true;
	}
	
	// to get all Tours are wating state.
	public List<TourModel> getListsToursDetailsbyStateState(int state){
		List<TourModel> listTourModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from TourDetail where stateTour = ?");
			query.setCacheable(true);
			query.setParameter(0, state);
			List<TourDetail> listtourDetails = query.list();
			
			if(listtourDetails.size() >0){
				for(TourDetail tourDetail : listtourDetails){
						TourModel model = new TourModel();
						model.setCategory(tourDetail.getTour().getCategory().getNameCategory());
						model.setIdCategory(tourDetail.getTour().getCategory().getIdCategory());
						model.setContent(tourDetail.getTour().getContent());
						model.setIdTour(tourDetail.getTour().getIdTour());
						model.setIdTourDeTail(tourDetail.getIdTourDeTail());
						model.setImageTitle(tourDetail.getTour().getImageTitle());
						model.setIMPORTANT(tourDetail.getIMPORTANT());
						model.setPlaceDropOff(tourDetail.getTour().getPlaceDropOff());
						model.setPlacePickUp(tourDetail.getTour().getPlacePickUp());
						model.setQuantitySeat(tourDetail.getQuantitySeat());
						model.setRealPrice(tourDetail.getRealPrice());
						model.setSale1(tourDetail.getSale1());
						model.setSale2(tourDetail.getSale2());
						model.setStateTour(tourDetail.getStateTour());
						model.setTimeBegin(tourDetail.getTimeBegin().toString());
						model.setTimeOff(tourDetail.getTimeOff().toString());
						model.setTitle(tourDetail.getTour().getTitle());
						model.setVirtualPrice(tourDetail.getVirtualPrice());
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
		return listTourModels;
		
	}
	// to get all tour from start project to now.
	// Author: Hieu
	// Date: 12/6/2017
	public List<TourModel> getAllTourDetailsHistory(){
		List<TourModel> listTourModels = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Criteria criteria = session.createCriteria(TourDetail.class);
			List<TourDetail> listtourDetails = criteria.list();			
			if(listtourDetails.size() >0){
				for(TourDetail tourDetail : listtourDetails){
						TourModel model = new TourModel();
						model.setCategory(tourDetail.getTour().getCategory().getNameCategory());
						model.setIdCategory(tourDetail.getTour().getCategory().getIdCategory());
						model.setContent(tourDetail.getTour().getContent());
						model.setIdTour(tourDetail.getTour().getIdTour());
						model.setIdTourDeTail(tourDetail.getIdTourDeTail());
						model.setImageTitle(tourDetail.getTour().getImageTitle());
						model.setIMPORTANT(tourDetail.getIMPORTANT());
						model.setPlaceDropOff(tourDetail.getTour().getPlaceDropOff());
						model.setPlacePickUp(tourDetail.getTour().getPlacePickUp());
						model.setQuantitySeat(tourDetail.getQuantitySeat());
						model.setRealPrice(tourDetail.getRealPrice());
						model.setSale1(tourDetail.getSale1());
						model.setSale2(tourDetail.getSale2());
						model.setStateTour(tourDetail.getStateTour());
						model.setTimeBegin(tourDetail.getTimeBegin().toString());
						model.setTimeOff(tourDetail.getTimeOff().toString());
						model.setTitle(tourDetail.getTour().getTitle());
						model.setVirtualPrice(tourDetail.getVirtualPrice());
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
		return listTourModels;
		
	}
	// this method used to convert Tour from current state to running(state =2) or close tour(state = 3) or waiting state( = 1)
	// author: Hieu
	// Date: 12/6/2017
	public boolean  updateStateTour(String idTourDetail, int typeState){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			TourDetail tourDetail = (TourDetail) session.get(TourDetail.class, idTourDetail);
			if(typeState == 2)
			{
				tourDetail.setStateTour(2);
			}
			else if(typeState == 3){
				tourDetail.setStateTour(3);
			}
			else if(typeState == 1){
				tourDetail.setStateTour(1);
			}
				
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
	// to add new Tour
	// TourModel of adminModel: get this argument from controller.
	public boolean addNewTourDetails(TourModel tourModel){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Tour tour = (Tour) session.get(Tour.class, tourModel.getIdTour());
			Criteria criteria = session.createCriteria(TourDetail.class);
			Random random = new Random();
			String idTour ="";
			List<TourDetail> listTour = criteria.list();
			if(listTour.size() == 0){
				idTour = "tourDetail"+1+"btv"+random.nextInt(1000);
			   }
			   else{
				   String idCategory = listTour.get(listTour.size() - 1).getIdTourDeTail();
				   int subString= Integer.parseInt(idCategory.substring(10, idCategory.indexOf("btv")));
				   idTour = "tourDetail"+ ++subString +"btv"+random.nextInt(1000);
			   }
			TourDetail tourDetail = new TourDetail();
			tourDetail.setIdTourDeTail(idTour);
			tourDetail.setTour(tour);
			tourDetail.setIMPORTANT(tourModel.getIMPORTANT());
			tourDetail.setQuantitySeat(tourModel.getQuantitySeat());
			tourDetail.setRealPrice(tourModel.getRealPrice());
			tourDetail.setSale1(tourModel.getSale1());
			tourDetail.setSale2(tourModel.getSale2());
			tourDetail.setStateTour(1);
			tourDetail.setTimeBegin(new SimpleDateFormat("MM/dd/yyyy").parse(tourModel.getTimeBegin()));
			tourDetail.setTimeOff(new SimpleDateFormat("MM/dd/yyyy").parse(tourModel.getTimeOff()));
			tourDetail.setVirtualPrice(tourModel.getVirtualPrice());
			session.save(tourDetail);
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
	// to update old TourDetail
	// don't update important. and update state tour.
	public boolean UpdateTourDetail(TourModel tourmodel){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			  Tour tour = (Tour) session.get(Tour.class, tourmodel.getIdTour());
				TourDetail tourDetail = (TourDetail) session.get(TourDetail.class, tourmodel.getIdTourDeTail());
				tourDetail.setTour(tour);
				tourDetail.setQuantitySeat(tourmodel.getQuantitySeat());
				tourDetail.setRealPrice(tourmodel.getRealPrice());
				tourDetail.setSale1(tourmodel.getSale1());
				tourDetail.setSale2(tourmodel.getSale2());
				tourDetail.setTimeBegin(new SimpleDateFormat("MM/dd/yyyy").parse(tourmodel.getTimeBegin()));
				tourDetail.setTimeOff(new SimpleDateFormat("MM/dd/yyyy").parse(tourmodel.getTimeOff()));
				tourDetail.setVirtualPrice(tourmodel.getVirtualPrice());
				session.save(tourDetail);
				
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
