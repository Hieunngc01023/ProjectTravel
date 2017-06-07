package controller;

import com.opensymphony.xwork2.ActionSupport;

import dao.CommentDAO;

public class CommentController extends ActionSupport {
	private String typeComment;
	private  int idMain ;
	private String name;
	private String email;
	private String content;
	private String idTour;
	private String idTourDetail;
	
	
	
	
	public String getIdTourDetail() {
		return idTourDetail;
	}




	public void setIdTourDetail(String idTourDetail) {
		this.idTourDetail = idTourDetail;
	}




	public String getIdTour() {
		return idTour;
	}




	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}




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




	@Override
	public String execute() throws Exception {
		if(typeComment.equals("main"))
		{
			new CommentDAO().addMainComment(name, email, idTour, content);
		}
		else if(typeComment.equals("sub"))
			new CommentDAO().addSubComment(name, email, idTour, content, idMain);
			
		else
			return "error";
		return SUCCESS;
	}

}
