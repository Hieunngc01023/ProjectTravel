package controller;

import com.opensymphony.xwork2.ActionSupport;

import dao.CommentBlogDAO;
import dao.CommentDAO;

public class CommentBLogController extends ActionSupport {
	private String typeComment;
	private  int idMain ;
	private String name;
	private String email;
	private String content;
	private int idBlog;
	
	
	public String getTypeComment() {
		return typeComment;
	}


	public void setTypeComment(String typeComment) {
		this.typeComment = typeComment;
	}


	public int getIdMain() {
		return idMain;
	}


	public void setIdMain(int idMain) {
		this.idMain = idMain;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getIdBlog() {
		return idBlog;
	}


	public void setIdBlog(int idBlog) {
		this.idBlog = idBlog;
	}


	@Override
	public String execute() throws Exception {
		if(typeComment.equals("main"))
		{
			new CommentBlogDAO().addMainComment(name, email, idBlog, content);
		}
		else if(typeComment.equals("sub"))
			new CommentBlogDAO().addSubComment(name, email, idBlog, content, idMain);
			
		else
			return "error";
		
		return SUCCESS;
	}

}
