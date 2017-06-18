package controller;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import model.BlogModel;
import adminDAO.TourDAO;

import com.opensymphony.xwork2.ActionSupport;

import dao.BlogDAO;

public class BlogController extends ActionSupport {
	private String title;
	private File imageTitle;
	private String imageTitleFileName;
	private String imageTitleContenType;
	private String  content;
	private int idUser;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public File getImageTitle() {
		return imageTitle;
	}
	public void setImageTitle(File imageTitle) {
		this.imageTitle = imageTitle;
	}
	public String getImageTitleFileName() {
		return imageTitleFileName;
	}
	public void setImageTitleFileName(String imageTitleFileName) {
		this.imageTitleFileName = imageTitleFileName;
	}
	public String getImageTitleContenType() {
		return imageTitleContenType;
	}
	public void setImageTitleContenType(String imageTitleContenType) {
		this.imageTitleContenType = imageTitleContenType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	@Override
	public String execute() throws Exception {
		BlogModel blogModel = new BlogModel();
		blogModel.setContent(content);
		blogModel.setTitle(title);
		String filePath = ServletActionContext.getServletContext().getRealPath("/");
		boolean flag = new BlogDAO().addNewBlog(idUser, blogModel, imageTitle, imageTitleFileName , filePath);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
		
	}
	
	
	
	

}
