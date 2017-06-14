package adminController;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import adminDAO.CarDAO;
import adminModel.CarModel;

import com.opensymphony.xwork2.ActionSupport;

public class CarAdminController extends ActionSupport {
	private int idCar;
	private String nameCar;
	private String brand;
	private int quanitySeat;
	private int gear;
	private int fuel;
	private int price;
	private File imageTitle;
	private String imageTitleContenType;
	 private String imageTitleFileName;
	private int quantityCar;
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
	public void setFuel(int fuel) {
		this.fuel = fuel;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
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
	
	public String addNewCar(){
		String filePath = ServletActionContext.getServletContext().getRealPath("/");
		CarModel carModel = new CarModel();
		carModel.setBrand(brand);
		carModel.setContent(content);
		carModel.setFuel(fuel);
		carModel.setGear(gear);
		carModel.setNameCar(nameCar);
		carModel.setPrice(price);
		carModel.setQuanitySeat(quanitySeat);
		carModel.setQuantityCar(quantityCar);
		boolean flag = new CarDAO().addNewCar(carModel, imageTitle, filePath, imageTitleFileName);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
		
	}
	public String updateCar(){
		String filePath = ServletActionContext.getServletContext().getRealPath("/");
		CarModel carModel = new CarModel();
		carModel.setIdCar(idCar);
		carModel.setBrand(brand);
		carModel.setContent(content);
		carModel.setFuel(fuel);
		carModel.setGear(gear);
		carModel.setNameCar(nameCar);
		carModel.setPrice(price);
		carModel.setQuanitySeat(quanitySeat);
		carModel.setQuantityCar(quantityCar);
		boolean flag = new CarDAO().UpdateCar(carModel, imageTitle, filePath, imageTitleFileName);
		if(flag == true)
			return SUCCESS;
		else
			return ERROR;
	}
	
}
