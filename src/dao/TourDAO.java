package dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import model.SortTourByRealPrice;
import model.TourModel;
import entities.TourDetail;
public class TourDAO {
	public int getDays(Date begin, Date end){
		int distance = 0;
		try {
			
		  distance = (int) Math.abs((end.getTime() - begin.getTime())/86400000);		   
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return distance;
	}
	// This method used to get Tours are cheapest.
	public List<TourModel> getListCheapestTour(){
		List<TourModel> listTourCheapest = fetchTour();
		Collections.sort(listTourCheapest, new SortTourByRealPrice() );
		for(TourModel tour : listTourCheapest)
			System.out.println(tour.getRealPrice());
		return listTourCheapest;		
	}	
	// This method used to get Tours in Wating state and important is 1
	// Author: Hieu
	// Date: 30/5/2017
	public List<TourModel> getListHotTour(){
		List<TourModel> listToutHot = new ArrayList<>();
		for(TourModel tour : fetchTour())
		{
			if(tour.getImportant() == 1)
				listToutHot.add(tour);
		}
		return listToutHot;
	}
	
	
	// This method used to fetch all Tours with state is waiting, and sort with (virtual_price - real_price) 
	// Author: Hieu
	// Date: 30/05/2017
	public List<TourModel> getListSockTour(){
		List<TourModel> list = fetchTour();
		Collections.sort(list);
		List<TourModel> listSork = new ArrayList<>();
		for(int i = (list.size() -1); i>=0; i--){
			listSork.add(list.get(i));
		}
		return listSork;		
	}
	
	// this mothod used to fetch all Tour are wating state
	// Author:Hieu
	// Date 29/5/2017
	public List<TourModel> fetchTour(){
		List<TourDetail> listTour = null;
		List<TourModel> listTourModel = new ArrayList<TourModel>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();		
			Query query = session.createQuery("from TourDetail where stateTour = 1");
			query.setCacheable(true);
			listTour = query.list();
			session.getTransaction().commit();		
			
			for(TourDetail tourdetail: listTour){
				TourModel tourmodel = new TourModel();
				tourmodel.setIdTourDetail(tourdetail.getIdTourDeTail());

				tourmodel.setRealPrice(tourdetail.getRealPrice());
				tourmodel.setVirtualPrice(tourdetail.getVirtualPrice());
				tourmodel.setTitle(tourdetail.getTour().getTitle());
				tourmodel.setTimBegin(tourdetail.getTimeBegin());
				tourmodel.setQuatiDate(getDays(tourdetail.getTimeBegin(), tourdetail.getTimeOff()));
				tourmodel.setSort(tourdetail.getVirtualPrice()- tourdetail.getRealPrice());
				tourmodel.setImportant(tourdetail.getIMPORTANT());
				listTourModel.add(tourmodel);
			}
		} catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		return listTourModel;		
	} 
	// This method used to get a Tour Detail is specified by User- Client.
	// Prameter idTourDetail is id witch  User click in a tour, in each Tour containt a Id TourDetail.
	// Author: Hieu.
	// Date. 30/5/2017
	public TourModel getTourDetail(String idTourDetail){
		TourModel tourModel = new TourModel();
		Session session = HibernateUtil.getSessionFactory().openSession();
			try {
				session.beginTransaction();
				TourDetail tour = (TourDetail) session.get(TourDetail.class, idTourDetail);
				session.getTransaction().commit();
				tourModel.setContent(tour.getTour().getContent());
				tourModel.setDropOffPlace(tour.getTour().getPlaceDropOff());
				tourModel.setIdTour(tour.getTour().getIdTour());
				tourModel.setIdTourDetail(tour.getIdTourDeTail());
				tourModel.setImportant(tour.getIMPORTANT());
				tourModel.setPickupPlace(tour.getTour().getPlacePickUp());
				tourModel.setQuatiDate(getDays(tour.getTimeBegin(), tour.getTimeOff()));
				tourModel.setRealPrice(tour.getRealPrice());
				tourModel.setSale1(tour.getSale1());
				tourModel.setSale2(tour.getSale2());
				tourModel.setSeatAvailable(tour.getQuantitySeat());
				tourModel.setTimBegin(tour.getTimeBegin());
				tourModel.setTimeEnd(tour.getTimeOff());
				tourModel.setTitle(tour.getTour().getTitle());
				tourModel.setVirtualPrice(tour.getVirtualPrice());

			} catch (Exception e) {
				session.getTransaction().rollback();
				e.printStackTrace();
				System.out.println("Error: "+e.getMessage());
			}
			finally{
				session.close();
			}		
		return tourModel;
	}
}
