package controller;

import com.opensymphony.xwork2.ActionSupport;

public class CommentController extends ActionSupport {
	private String typeComment;
	private  int idMain ;
	private String name;
	private String email;
	private String content;
	
	
	
	
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
		// TODO Auto-generated method stub
		return super.execute();
	}

}
