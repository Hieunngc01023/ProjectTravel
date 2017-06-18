package adminController;

import java.io.File;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import adminDAO.TourDAO;
import adminModel.TourModel;

import com.opensymphony.xwork2.ActionSupport;

public class TourController extends ActionSupport  {
	private String idTour;
	private String title;
	private String idCategory;
	private String placePickup;
	private String placeDrop;
	private File imageTitle;
	private String imageTitleContenType;
	 private String imageTitleFileName;
	 private String content;
	 
	 private String keyword;
	 
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getTitle() {
		return title;
	}
	public String getIdTour() {
		return idTour;
	}
	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getIdCategory() {
		return idCategory;
	}
	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}
	public String getPlacePickup() {
		return placePickup;
	}
	public void setPlacePickup(String placePickup) {
		this.placePickup = placePickup;
	}
	public String getPlaceDrop() {
		return placeDrop;
	}
	public void setPlaceDrop(String placeDrop) {
		this.placeDrop = placeDrop;
	}
	public File getImageTitle() {
		return imageTitle;
	}
	public void setImageTitle(File imageTitle) {
		this.imageTitle = imageTitle;
	}
	public String getImageTitleContenType() {
		return imageTitleContenType;
	}
	public void setImageTitleContenType(String imageTitleContenType) {
		this.imageTitleContenType = imageTitleContenType;
	}
	public String getImageTitleFileName() {
		return imageTitleFileName;
	}
	public void setImageTitleFileName(String imageTitleFileName) {
		this.imageTitleFileName = imageTitleFileName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String addNew(){
		TourModel tourmodel = new TourModel();
		tourmodel.setContent(content);
		tourmodel.setPlaceDropOff(placeDrop);
		tourmodel.setPlacePickUp(placePickup);
		tourmodel.setTitle(title);
		String filePath = ServletActionContext.getServletContext().getRealPath("/");
		boolean flag = new TourDAO().addNewTour(idCategory, tourmodel, imageTitle, imageTitleFileName , filePath);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	
	public String update(){
		TourModel tourmodel = new TourModel();
		tourmodel.setIdTour(idTour);
		tourmodel.setContent(content);
		tourmodel.setPlaceDropOff(placeDrop);
		tourmodel.setPlacePickUp(placePickup);
		tourmodel.setTitle(title);
		String filePath = ServletActionContext.getServletContext().getRealPath("/");
		boolean flag = new TourDAO().updateTour(idCategory, tourmodel, imageTitle, imageTitleFileName , filePath);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	
	public String getListTourbyIdCate(){
		if(idCategory.equals("")){
			List<TourModel> listTour = new TourDAO().getListTours(keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTour);
			} catch (Exception e) {
				return ERROR;
			}
		}
		else{
			List<TourModel> listTour = new TourDAO().getListTourByidCategory(idCategory, keyword);
			try {
				ServletActionContext.getRequest().setAttribute("listTourDetail", listTour);
			} catch (Exception e) {
				return ERROR;
			}
			
		}
		return SUCCESS;
	}
	 
}
