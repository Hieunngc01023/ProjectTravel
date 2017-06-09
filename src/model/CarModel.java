package model;

public class CarModel {
	private int idCar;
	private String nameCar;
	private int gear;
	private int price;
	private String imageTitle;
	private int quanitySeat;
	private int quantityCar;
	private String content;
	private String brand;
	private int fuel;
	public int getFuel() {
		return fuel;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idCar;
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
		CarModel other = (CarModel) obj;
		if (idCar != other.idCar)
			return false;
		return true;
	}
	public void setFuel(int fuel) {
		this.fuel = fuel;
	}
	public int getIdCar() {
		return idCar;
	}
	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getNameCar() {
		return nameCar;
	}
	public void setNameCar(String nameCar) {
		this.nameCar = nameCar;
	}
	public int getGear() {
		return gear;
	}
	public void setGear(int gear) {
		this.gear = gear;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImageTitle() {
		return imageTitle;
	}
	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}
	public int getQuanitySeat() {
		return quanitySeat;
	}
	public void setQuanitySeat(int quanitySeat) {
		this.quanitySeat = quanitySeat;
	}
	public int getQuantityCar() {
		return quantityCar;
	}
	public void setQuantityCar(int quantityCar) {
		this.quantityCar = quantityCar;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
