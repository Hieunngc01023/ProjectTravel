package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.IdClass;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.Comment;
import entities.SubComment;
import entities.Tour;
import entities.User;
import util.HibernateUtil;

public class CommentDAO {
	
	// This method used to get Total comment of an Tour;
	public long getTotalComment(String idTour){
		Session session = HibernateUtil.getSessionFactory().openSession();
		long total =0;
		try {
			session.beginTransaction();
				Tour tour = (Tour) session.get(Tour.class, idTour);
				Query querySubComment = session.createQuery("select count(t.idTour) from SubComment as s inner join s.tour as t group by t.idTour having t.idTour = ?");
				querySubComment.setCacheable(true);
				querySubComment.setParameter(0, idTour);
				
			long totalSub =  ( querySubComment.uniqueResult() == null)?0:((long) querySubComment.uniqueResult());
			Query queryMainComment = session.createQuery("select count(t.idTour) from Comment as s inner join s.tour as t  group by t.idTour having t.idTour = ?");
			queryMainComment.setCacheable(true);
			queryMainComment.setParameter(0, idTour);
			session.getTransaction().commit();
			long totalMain =  (queryMainComment.uniqueResult()== null)?0: ((long)queryMainComment.uniqueResult() );
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
				Tour tour = (Tour) session.get(Tour.class, idTour);
				// add User if didn't login 
				Query query = session.createQuery("from User where email = ?");
				query.setCacheable(true);
				query.setParameter(0, email);
				User userEntity = (User) query.uniqueResult();
				if(userEntity == null){
					userEntity = new User();
					userEntity.setEmail(email);
					userEntity.setFullName(name);
					session.save(userEntity);
				}
				else{
					// update User if email is exist in DB
					userEntity.setFullName(name);
					session.update(userEntity);
				}
				Comment comment = new Comment();
				comment.setContent(content);
				comment.setDateComment(new Date());
				comment.setTour(tour);
				comment.setUser(userEntity);
				session.save(comment);
				
				
				
				
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		
	}
	public void addSubComment(String name, String email, String idTour, String content, int idMain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
					// getTour
				Tour tour = (Tour) session.get(Tour.class, idTour);
				// add User if didn't login 
				Query query = session.createQuery("from User where email = ?");
				query.setCacheable(true);
				query.setParameter(0, email);
				User userEntity = (User) query.uniqueResult();
				if(userEntity == null){
					userEntity = new User();
					userEntity.setEmail(email);
					userEntity.setFullName(name);
					session.save(userEntity);
				}
				else{
					// update User if email is exist in DB
					userEntity.setFullName(name);
					session.update(userEntity);
				}
				Comment comment = (Comment) session.get(Comment.class, idMain);
				SubComment subcomment = new SubComment();
				subcomment.setContent(content);
				subcomment.setDateComment(new Date());
				subcomment.setParentComment(comment);
				subcomment.setTour(tour);
				subcomment.setUser(userEntity);
				session.save(subcomment);	
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
	}
	public List<Comment> getListComments(String idTour){
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Comment> listComment = new ArrayList<>();
		try {
			session.beginTransaction();
			Tour tour = (Tour) session.get(Tour.class, idTour);
			listComment = tour.getListComments();
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		}
		finally{
			session.close();
		}
		return listComment;
	}

}
