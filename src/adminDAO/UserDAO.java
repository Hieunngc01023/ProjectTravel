package adminDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.User;
import util.HibernateUtil;
import adminModel.UserModel;

public class UserDAO {

		public List<UserModel> getlistUserisRegesisted(){
				List<UserModel> listUser = new ArrayList<>();
				Session session = HibernateUtil.getSessionFactory().openSession();
				try {
					session.beginTransaction();
						Query query = session.createQuery("from User where password is not null");
						query.setCacheable(true);
						List<User> list = query.list();
						if(list.size() >0){
							for(User user : list){
								UserModel userModel = new UserModel();
								userModel.setAddress(user.getAddress());
								userModel.setEmail(user.getEmail());
								userModel.setFullName(user.getFullName());
								userModel.setId(user.getId());
								userModel.setPhoneNumber(user.getPhoneNumber());
								userModel.setPassword(user.getPassword());
								listUser.add(userModel);
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
				return listUser;
				
		}
		
	public boolean UpdateUser(UserModel uesrModel){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, uesrModel.getId());
			user.setAddress(uesrModel.getAddress());
			user.setEmail(uesrModel.getEmail());
			user.setFullName(uesrModel.getFullName());
			if(!uesrModel.getPassword().equals("")){
				user.setPassword(uesrModel.getPassword());
			}
			user.setPhoneNumber(uesrModel.getPhoneNumber());
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
	public boolean addUser(UserModel usermodle){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = new User();
			user.setAddress(usermodle.getAddress());
			user.setEmail(usermodle.getEmail());
			user.setFullName(usermodle.getFullName());
			user.setPhoneNumber(usermodle.getPhoneNumber());
			user.setPassword(usermodle.getPassword());
			session.save(user);
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
