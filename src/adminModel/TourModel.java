package adminModel;

import java.io.File;
import java.util.Date;



public class TourModel {
	// field of TOur
	private String idTour;
	private String title;
	private String placePickUp;
	private String placeDropOff;
	private String imageTitle;
	private String content;
	private String category;
	private String idCategory;

	
	
	
	public String getIdCategory() {
		return idCategory;
	}
	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}
	// fields of Tours Details
	private String idTourDeTail;
	private String timeBegin;
	private  String timeOff;
	private  int IMPORTANT;
	private int realPrice;
	private int virtualPrice;
	private int  quantitySeat;
	private int sale1;
	private int sale2;
	private int stateTour;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getIdTour() {
		return idTour;
	}
	public void setIdTour(String idTour) {
		this.idTour = idTour;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPlacePickUp() {
		return placePickUp;
	}
	public void setPlacePickUp(String placePickUp) {
		this.placePickUp = placePickUp;
	}
	public String getPlaceDropOff() {
		return placeDropOff;
	}
	public void setPlaceDropOff(String placeDropOff) {
		this.placeDropOff = placeDropOff;
	}
	public String getImageTitle() {
		return imageTitle;
	}
	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIdTourDeTail() {
		return idTourDeTail;
	}
	public void setIdTourDeTail(String idTourDeTail) {
		this.idTourDeTail = idTourDeTail;
	}
	public String getTimeBegin() {
		return timeBegin;
	}
	public void setTimeBegin(String timeBegin) {
		this.timeBegin = timeBegin;
	}
	public String getTimeOff() {
		return timeOff;
	}
	public void setTimeOff(String timeOff) {
		this.timeOff = timeOff;
	}
	public int getIMPORTANT() {
		return IMPORTANT;
	}
	public void setIMPORTANT(int iMPORTANT) {
		IMPORTANT = iMPORTANT;
	}
	public int getRealPrice() {
		return realPrice;
	}
	public void setRealPrice(int realPrice) {
		this.realPrice = realPrice;
	}
	public int getVirtualPrice() {
		return virtualPrice;
	}
	public void setVirtualPrice(int virtualPrice) {
		this.virtualPrice = virtualPrice;
	}
	public int getQuantitySeat() {
		return quantitySeat;
	}
	public void setQuantitySeat(int quantitySeat) {
		this.quantitySeat = quantitySeat;
	}
	public int getSale1() {
		return sale1;
	}
	public void setSale1(int sale1) {
		this.sale1 = sale1;
	}
	public int getSale2() {
		return sale2;
	}
	public void setSale2(int sale2) {
		this.sale2 = sale2;
	}
	public int getStateTour() {
		return stateTour;
	}
	public void setStateTour(int stateTour) {
		this.stateTour = stateTour;
	}
	
	

}
