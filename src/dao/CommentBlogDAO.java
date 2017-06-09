package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.CommentModel;

import org.hibernate.Query;
import org.hibernate.Session;

import util.HibernateUtil;
import entities.Blog;
import entities.Comment;
import entities.CommentBlog;
import entities.SubComment;
import entities.SubCommentBlog;
import entities.Tour;
import entities.User;

public class CommentBlogDAO {
	
	// This method used to get total COmments of an blog is specify by id 
	// return total comment and subment of that blog
	// author: Hieu
	// Date: 9/6/2017
	public long getTotalComment(int idBlog){
		Session session = HibernateUtil.getSessionFactory().openSession();
		long total =0;
		try {
			session.beginTransaction();
//				Blog tour = (Blog) session.get(Blog.class, idBlog);
				Query querySubComment = session.createQuery("select count(t.idBlog) from SubCommentBlog as s inner join s.blog as t group by t.idBlog having t.idBlog = ?");
				querySubComment.setCacheable(true);
				querySubComment.setParameter(0, idBlog);
				
			long totalSub =  ( querySubComment.uniqueResult() == null)?0:((long) querySubComment.uniqueResult());
			Query queryMainComment = session.createQuery("select count(t.idBlog) from CommentBlog as s inner join s.blog as t  group by t.idBlog having t.idBlog = ?");
			queryMainComment.setCacheable(true);
			queryMainComment.setParameter(0, idBlog);
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
		public void addMainComment(String name, String email, int idBlog, String content){
			
			Session session = HibernateUtil.getSessionFactory().openSession();
			try {
				session.beginTransaction();
					Blog blog = (Blog) session.get(Blog.class, idBlog);
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
					CommentBlog comment = new CommentBlog();
					comment.setContent(content);
					comment.setDateComment(new Date());
					comment.setBlog(blog);
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
		// This method used to add SubComment 
		public void addSubComment(String name, String email, int idBlog, String content, int idMain){
			Session session = HibernateUtil.getSessionFactory().openSession();
			try {
				session.beginTransaction();
						// getTour
//					Tour tour = (Tour) session.get(Tour.class, idTour);
					Blog blog = (Blog) session.get(Blog.class, idBlog);
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
					CommentBlog comment = (CommentBlog) session.get(CommentBlog.class, idMain);
					
					SubCommentBlog subcomment = new SubCommentBlog();
					subcomment.setContent(content);
					subcomment.setDateComment(new Date());
					subcomment.setParentComment(comment);
					subcomment.setBlog(blog);
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
		// This method used to get ListComment
		public List<CommentModel> getListComments(int idBlog){
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<CommentModel> listComment = new ArrayList<>();
			try {
				session.beginTransaction();
//				Tour tour = (Tour) session.get(Tour.class, idTour);
				Blog blog = (Blog) session.get(Blog.class, idBlog);
				List<CommentBlog> list = blog.getListCommentBlogs();
				if(list.size() > 0){
					for(CommentBlog comment : list){
						CommentModel cmt = new CommentModel();
						cmt.setIdComment(comment.getIdComment());
						cmt.setDateComment(comment.getDateComment());
						cmt.setContent(comment.getContent());
						cmt.setNameUser(comment.getUser().getFullName());
						listComment.add(cmt);
					}
				}
				
				session.getTransaction().commit();
			} catch (Exception e) {
				session.getTransaction().rollback();
			}
			finally{
				session.close();
			}
			return listComment;
		}
		
		// this method used to get subcomments 
		public List<CommentModel> getListSubComment(int idComment){
			Session session = HibernateUtil.getSessionFactory().openSession();
			List<CommentModel> listSubComment = new ArrayList<>();
			try {
				session.beginTransaction();
				CommentBlog commentQuery = (CommentBlog) session.get(CommentBlog.class, idComment);
				List<SubCommentBlog> listComment = commentQuery.getListSubcomment();
				if(listComment.size() >0){
					for(SubCommentBlog comment :listComment){
						CommentModel cmt = new CommentModel();
						cmt.setIdComment(comment.getIdSubComment());
						cmt.setDateComment(comment.getDateComment());
						cmt.setContent(comment.getContent());
						cmt.setNameUser(comment.getUser().getFullName());
						listSubComment.add(cmt);
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
			return listSubComment;
		}
}
