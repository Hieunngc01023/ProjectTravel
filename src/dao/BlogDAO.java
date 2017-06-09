package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entities.Blog;
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
					 if(list.size() >0){
						 	for(Blog blog : list){
						 		BlogModel blogModel = new BlogModel();
						 		blogModel.setIdBlog(blog.getIdBlog());
						 		blogModel.setContent(blog.getContent());
						 		blogModel.setImageTitle(blog.getImageTitle());
						 		blogModel.setTimeCreated(blog.getTimeCreated());
						 		blogModel.setTitle(blog.getTitle());
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
			 		blogModel.setTimeCreated(blog.getTimeCreated());
			 		blogModel.setTitle(blog.getTitle());
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
	
}
