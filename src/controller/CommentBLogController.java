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
