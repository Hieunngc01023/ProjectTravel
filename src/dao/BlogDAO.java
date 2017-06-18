package dao;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import entities.Blog;
import entities.Category;
import entities.Tour;
import entities.User;
import util.HibernateUtil;
import model.*;
public class BlogDAO {
	// This method used to get All Blogs and sort by latest blog
	// Date: 9/6/2016
	// Author: Hieu
	public List<BlogModel> getListBlog(){
		List<BlogModel> listBlogs = new ArrayList<BlogModel>();
			Session session = HibernateUtil.getSessionFactory().openSession();
			try {
				session.beginTransaction();
					 Query query = session.createQuery("from Blog order by idBlog DESC ");
					 query.setCacheable(true);
					
					 List<Blog> list = query.list();
					 
					 System.out.println("vao day khong.");
					 if(list.size() >0){
						 System.out.println("vao day khong.1");
						 	for(Blog blog : list){
						 		 System.out.println("vao day khong 2.");
						 		BlogModel blogModel = new BlogModel();
						 		blogModel.setIdBlog(blog.getIdBlog());
						 		if(blog.getContent() == null){
						 			System.out.println("blog null");
						 		}
						 		else{
						 			blogModel.setContent(blog.getContent());
						 		}
						 		blogModel.setImageTitle(blog.getImageTitle());
						 		blogModel.setTimeCreated(blog.getTimeCreated().toString());
						 		blogModel.setTitle(blog.getTitle());
						 		blogModel.setNameCreate(blog.getUser().getFullName());
						 		
						 		listBlogs.add(blogModel);
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
		return listBlogs;
		
	}
	// This method used to get Detail Blog by id
	// Author Hieu.
	// Date: 9/6/2017
	public BlogModel getDetailBlog(int idBlog){
		BlogModel blogModel = new BlogModel();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
				Query query = session.createQuery("from Blog where idBlog =?");
				query.setCacheable(true);
				query.setParameter(0, idBlog);
				Blog blog = (Blog) query.uniqueResult();
				if(blog != null){
					blogModel.setIdBlog(blog.getIdBlog());
			 		blogModel.setContent(blog.getContent());
			 		blogModel.setImageTitle(blog.getImageTitle());
			 		blogModel.setTimeCreated(blog.getTimeCreated().toString());
			 		blogModel.setTitle(blog.getTitle());
			 		blogModel.setNameCreate(blog.getUser().getFullName());
				}
			
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			System.out.println("Error: "+e.getMessage());

		}
		finally{
			session.close();
			
		}
		return blogModel;
		
	}
	public boolean addNewBlog(int idUser, BlogModel blogModel, File image, String imageName, String filePath ){
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			User user = (User) session.get(User.class, idUser);
			
			Random random = new Random();
			
			
			Blog blog = new Blog();
			blog.setContent(blogModel.getContent());
			blog.setTitle(blogModel.getTitle());
			blog.setUser(user);
			blog.setTimeCreated(new Date());
			String duplicate = String.valueOf(random.nextInt(10000000));
			
			String filediretory = filePath+"/"+"admin/admin-assets/img";
			String imageTitle = "admin-assets/img/"+duplicate+imageName;
			String filePathnew = filePath+"/admin/"+imageTitle;
			String imageNametoStore = duplicate+imageName;
			
			if(new File(filePathnew).exists()){
				return false;
			}
			File file = new File(filediretory, imageNametoStore);
			FileUtils.copyFile(image, file);
			
			blog.setImageTitle(imageNametoStore);
			session.save(blog);
			
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
