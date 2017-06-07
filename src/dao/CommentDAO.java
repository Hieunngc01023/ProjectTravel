package dao;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.Comment;
import entities.Tour;
import entities.User;
import util.HibernateUtil;

public class CommentDAO {
	
	// This method used to get Total comment of an Tour;
	public int getTotalComment(String idTour){
		Session session = HibernateUtil.getSessionFactory().openSession();
		int total =0;
		try {
			session.beginTransaction();
				Tour tour = (Tour) session.get(Tour.class, idTour);
				Query querySubComment = session.createQuery("select count(tour) from SubComment groub by tour having tour = ?");
				querySubComment.setCacheable(true);
				querySubComment.setParameter(0, tour);
			int totalSub = (int) querySubComment.uniqueResult();
			
			Query queryMainComment = session.createQuery("select count(tour) from Comment groub by tour having tour = ?");
			queryMainComment.setCacheable(true);
			queryMainComment.setParameter(0, tour);
			session.getTransaction().commit();
			int totalMain = (int) queryMainComment.uniqueResult();
			total = totalSub +totalMain;
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			
			session.close();
		}
		return total;
	}
	// this method used to add new Comment.
	public void addMainComment(String name, String email, String idTour, String content){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Comment comment = (Comment) session.get(Comment.class, idMain);
				Tour tour = (Tour) session.get(Tour.class, idTour);
				// add User if didn't login 
				Query query = session.createQuery("from User where email = ?");
				query.setCacheable(true);
				query.setParameter(0, email);
				User userEntity = (User) query.uniqueResult();
				if(userEntity == null){
					userEntity.setEmail(email);
					userEntity.setFullName(name);
					session.save(userEntity);
				}
				else{
					// update User if email is exist in DB
					userEntity.setFullName(name);
					session.update(userEntity);
				}
				
				
				
				
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
	}

}
