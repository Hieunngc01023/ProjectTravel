package model;

import java.util.Date;

public class TourModel implements Comparable<TourModel> {
	private String idTourDetail;
	private int realPrice;
	private int virtualPrice;
	private int quatiDate;
	private Date timBegin;
	private Date timeEnd;
	private String title;
	private int important;
	private int seatAvailable;
	private String idTour;
	private String pickupPlace;
	private String dropOffPlace;
	private String content;
	
	public String getIdTourDetail() {
		return idTourDetail;
	}
	public void setIdTourDetail(String idTourDetail) {
		this.idTourDetail = idTourDetail;
	}
	public Date getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}
	public int getSeatAvailable() {
		return seatAvailable;
	}
	public void setSeatAvailable(int seatAvailable) {
		this.seatAvailable = seatAvailable;
	}
	public String getPickupPlace() {
		return pickupPlace;
	}
	public void setPickupPlace(String pickupPlace) {
		this.pickupPlace = pickupPlace;
	}
	public String getDropOffPlace() {
		return dropOffPlace;
	}
	public void setDropOffPlace(String dropOffPlace) {
		this.dropOffPlace = dropOffPlace;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	
	private int sale1;
	private int sale2;
	
	
	
	
	
	public int getImportant() {
		return important;
	}
	public void setImportant(int important) {
		this.important = important;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	private int sort;
	
	public String getIdTour() {
		return idTour;
	}
	public void setIdTour(String idTour) {
		this.idTour = idTour;
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
	public int getQuatiDate() {
		return quatiDate;
	}
	public void setQuatiDate(int quatiDate) {
		this.quatiDate = quatiDate;
	}
	public Date getTimBegin() {
		return timBegin;
	}
	public void setTimBegin(Date timBegin) {
		this.timBegin = timBegin;
	}
	@Override
	public int compareTo(TourModel o) {
		if(this.sort > o.sort)
			return 1;
		else if(this.sort == o.sort)
			return 0;
		else 
		return -1;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((idTourDetail == null) ? 0 : idTourDetail.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TourModel other = (TourModel) obj;
		if (idTourDetail == null) {
			if (other.idTourDetail != null)
				return false;
		} else if (!idTourDetail.equals(other.idTourDetail))
			return false;
		return true;
	}
	
	

}
