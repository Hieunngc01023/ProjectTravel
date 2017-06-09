package dao;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import model .*;
public class SerachTourDAO {
	
	// This method used to get List Tuour is searched by User 
	// pickUpPlace -> search by Place will pick up
	// dopOffplace -> search by Place will come.
	// datepicker8 -> this this the time will start
	// quantityDate -> interval time from start date to end date
	// Author: Hieu
	// Date: 04/06/2017
	public Set<TourModel> getListSearchTour(String pickUpPlace, String dropOffPlace, String datepicker8,int quantityDate){
		Set<TourModel> setTours = new HashSet<>(); // to avoid duplicate Tours.
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			if( pickUpPlace != null)
			{
				if(!pickUpPlace.isEmpty()){
				Query query = session.createQuery("select t.idTourDeTail, t.realPrice, t.virtualPrice, tour.title, t.timeBegin from TourDetail as t inner join t.tour as tour where t.stateTour = 1 and  tour.placePickUp = ? ");
				query.setCacheable(true);
				query.setParameter(0, pickUpPlace);
				List<Object[]> listTour = query.list();
				for(Object[] tourSearch : listTour){
					TourModel tour = new TourModel();
					tour.setIdTourDetail((String) tourSearch[0]);
					tour.setRealPrice((int) tourSearch[1]);
					tour.setVirtualPrice((int) tourSearch[2]);
					tour.setTitle((String) tourSearch[3]);
					tour.setTimBegin((Date) tourSearch[4]);		
					setTours.add(tour);
				}
				}
			}
			if(dropOffPlace != null)
			{
				if(!dropOffPlace.isEmpty())
				{
				Query query = session.createQuery("select t.idTourDeTail, t.realPrice, t.virtualPrice, tour.title, t.timeBegin from TourDetail as t inner join t.tour as tour where t.stateTour = 1 and  tour.placeDropOff = ? ");
				query.setCacheable(true);
				query.setParameter(0, dropOffPlace);
				List<Object[]> listTour = query.list();
				for(Object[] tourSearch : listTour){
					TourModel tour = new TourModel();
					tour.setIdTourDetail((String) tourSearch[0]);
					tour.setRealPrice((int) tourSearch[1]);
					tour.setVirtualPrice((int) tourSearch[2]);
					tour.setTitle((String) tourSearch[3]);
					tour.setTimBegin((Date) tourSearch[4]);		
					setTours.add(tour);
				}
				}
			}
			if(datepicker8 != null){
				
				if(!datepicker8.isEmpty()){
				try {
					// to get Date -3 
					SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
					Calendar calSubtraction = Calendar.getInstance();
					calSubtraction.setTime(dateFormat.parse(datepicker8));
					calSubtraction.add(Calendar.DATE, -3);					
					 Date subDate = calSubtraction.getTime();
					 
					 // to get Date +3
					Calendar calAdditation = Calendar.getInstance();
					calAdditation.setTime(dateFormat.parse(datepicker8));
					calAdditation.add(Calendar.DATE, +3);
					 Date addDate = calAdditation.getTime();
					 
					Query query = session.createQuery("select t.idTourDeTail, t.realPrice, t.virtualPrice, tour.title, t.timeBegin from TourDetail as t inner join t.tour as tour where t.stateTour = 1 and  t.timeBegin between ? and ? ");
					query.setCacheable(true);
					query.setParameter(0, subDate);
					query.setParameter(1, addDate);
					List<Object[]> listTour = query.list();
					if(listTour.size() >0){
					for(Object[] tourSearch : listTour){
						TourModel tour = new TourModel();
						tour.setIdTourDetail((String) tourSearch[0]);
						tour.setRealPrice((int) tourSearch[1]);
						tour.setVirtualPrice((int) tourSearch[2]);
						tour.setTitle((String) tourSearch[3]);
						tour.setTimBegin((Date) tourSearch[4]);		
						setTours.add(tour);
					}
					}
					
				} catch (Exception e) {
					System.out.println("Error date: "+e.getMessage());
				}				
				}
			}
			if(quantityDate >0){
				Query query = session.createQuery("select t.idTourDeTail, t.realPrice, t.virtualPrice, tour.title, t.timeBegin, t.timeOff from TourDetail as t inner join t.tour as tour where t.stateTour = 1");
				query.setCacheable(true);
				List<Object[]> listTour = query.list();
				for(Object[] tourSearch : listTour){
					TourModel tour = new TourModel();
					tour.setIdTourDetail((String) tourSearch[0]);
					tour.setRealPrice((int) tourSearch[1]);
					tour.setVirtualPrice((int) tourSearch[2]);
					tour.setTitle((String) tourSearch[3]);
					tour.setTimBegin((Date) tourSearch[4]);						
					tour.setQuatiDate(new TourDAO().getDays((Date)tourSearch[4], (Date)tourSearch[5]));
					if(tour.getQuatiDate() >= quantityDate -2 && tour.getQuatiDate() <= quantityDate +2)
					setTours.add(tour);
					if(quantityDate == 14 && tour.getQuatiDate() >14){
						setTours.add(tour);
					}
				}
				for(TourModel tour : setTours){
					System.out.println(tour.getIdTourDetail());
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
		return setTours;
	}
}
