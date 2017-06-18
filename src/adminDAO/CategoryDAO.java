package adminDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Criteria;
import org.hibernate.Session;

import entities.Category;
import entities.Order;
import util.HibernateUtil;
import adminModel.*;
public class CategoryDAO {
	
	// This method used to get All Categories of Tour .
	//Author: Hieu
	// Date: 11/6/2017
	public CategoryModel getDetailCate(String idCate){
		Session session = HibernateUtil.getSessionFactory().openSession();
		CategoryModel cateModel = new CategoryModel();
		try {
			session.beginTransaction();
			Category category = (Category) session.get(Category.class, idCate);
					
					cateModel.setIdCategory(category.getIdCategory());
					cateModel.setNameCategory(category.getNameCategory());
					cateModel.setDesCategory(category.getDesCategory());
			
		
			session.getTransaction().commit();
			
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());
		}
		finally{
			session.close();
		}
		

return cateModel ;
		
	}
	public List<CategoryModel>  getListCategory(){
			List<CategoryModel> listCates = new ArrayList<>();
				Session session = HibernateUtil.getSessionFactory().openSession();
				try {
					session.beginTransaction();
					Criteria crite = session.createCriteria(Category.class);
					List<Category> list = crite.list();
					if(list.size() >0){
						for(Category category : list){
							CategoryModel cateModel = new CategoryModel();
							cateModel.setIdCategory(category.getIdCategory());
							cateModel.setNameCategory(category.getNameCategory());
							cateModel.setDesCategory(category.getDesCategory());
							listCates.add(cateModel);
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
				
		
		return listCates;
	}
	// this method used to add new Category
	// Author Hieu. 
	// Date: 11/06/2017
	public boolean addNewcategory(String name, String descrip){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			Random random = new Random();
			String idCate ="";
		    Criteria criteria = session.createCriteria(Category.class);
		   List<Category> listCate = criteria.list();
		   if(listCate.size() == 0){
			   idCate = "category"+1+"btv"+random.nextInt(1000);
		   }
		   else{
			   String idCategory = listCate.get(listCate.size() - 1).getIdCategory();
			   int subString= Integer.parseInt(idCategory.substring(8, idCategory.indexOf("btv")));
			   idCate = "category"+ ++subString +"btv"+random.nextInt(1000);
		   }
		   Category cate = new Category();
		   cate.setIdCategory(idCate);
		   cate.setNameCategory(name);
		   cate.setDesCategory(descrip);
		   session.save(cate);
		   
			
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
	// this method used to update category
	// Author: hieu
	// date: 11/6/2017
	public boolean updateCategory(String id, String name, String description){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			
		   Category category = (Category) session.get(Category.class, id);
		   category.setDesCategory(description);
		   category.setNameCategory(name);
			
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
