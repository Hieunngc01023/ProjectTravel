package adminController;

import adminDAO.CommentDAOAdmin;
import adminDAO.TourDAO;

import com.opensymphony.xwork2.ActionSupport;

public class CommentController extends ActionSupport{
	private String idTour;
	private int idComment;
	private String isMain;
	public int getIdComment() {
		return idComment;
	}
	public String getIdTour() {
		return idTour;
	}
	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}
	public void setIdComment(int idComment) {
		this.idComment = idComment;
	}
	public String getIsMain() {
		return isMain;
	}
	public void setIsMain(String isMain) {
		this.isMain = isMain;
	}
	
	
	public String delete(){
		boolean flag = new CommentDAOAdmin().deleteComment(idComment, isMain);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	

}
