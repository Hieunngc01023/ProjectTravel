package entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage= CacheConcurrencyStrategy.READ_WRITE)
@Table(name ="CAR")
@Entity
public class Car {
	@Column(name= "ID")
	@GeneratedValue
	@Id
	private int idCar;
	
	@Column(name = "NAME", nullable = false)
	private String nameCar;
	
	@Column(name = "BRAND" , nullable = false)
	private String brand;
	
	@Column(name = "QUANTITYSEAT", nullable = false)
	private int quanitySeat;
	
	@Column(name = "GEAR", nullable = false)
	private int gear;
	
	@Column(name ="FUEL" , nullable = false)
	private int fuel;
	
	@Column(name = "PRICE", nullable = false)
	private int price;
	
	@Column(name = "IMAGE_TITLE", nullable = false)
	private String imageTitle;
	
	@Column(name= "QUANTITY_CAR" , nullable = false)
	private int quantityCar;
	
	@Column(name = "CONTENT", nullable = false)
	private String content;

	public int getIdCar() {
		return idCar;
	}

	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}

	public String getNameCar() {
		return nameCar;
	}

	public void setNameCar(String nameCar) {
		this.nameCar = nameCar;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getQuanitySeat() {
		return quanitySeat;
	}

	public void setQuanitySeat(int quanitySeat) {
		this.quanitySeat = quanitySeat;
	}

	public int getGear() {
		return gear;
	}

	public void setGear(int gear) {
		this.gear = gear;
	}

	public int getFuel() {
		return fuel;
	}

	public void setFuel(int feul) {
		this.fuel = feul;
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

	public int getQuantityCar() {
		return quantityCar;
	}

	public void setQuantityCar(int quantityCar) {
		this.quantityCar = quantityCar;
	}

	public String getContent() {
		return content;
	}

	public List<OrderCar> getListOrder() {
		return listOrder;
	}

	public void setListOrder(List<OrderCar> listOrder) {
		this.listOrder = listOrder;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@OneToMany(mappedBy = "car")
	private List<OrderCar> listOrder = new ArrayList<>();

}
