package adminDAO;

import org.hibernate.Session;

import entities.Comment;
import entities.SubComment;
import util.HibernateUtil;
public class CommentDAOAdmin {
	public boolean deleteComment(int idComment, String isMain){
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			if(isMain.equals("main")){
				Comment comment = (Comment) session.get(Comment.class, idComment);
				session.delete(comment);
			}
			else{
				SubComment subComment = (SubComment) session.get(SubComment.class, idComment);
				session.delete(subComment);
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

}
