package entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name= "CATEGORY")
@Entity
public class Category {
	
	@Id
	private String idCategory;
	@Column(name="NAME_CATEGORY", nullable= false, unique= true , columnDefinition="nvarchar")
	private String nameCategory;
	@Column(name="DESCRIPSION", nullable  = false,  length = 1000, columnDefinition="nvarchar")
	private String desCategory;
	
	@OneToMany(mappedBy ="category")
	private List<Tour> listTour = new ArrayList<>();
	public String getIdCategory() {
		return idCategory;
	}
	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}
	public String getNameCategory() {
		return nameCategory;
	}
	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}
	public String getDesCategory() {
		return desCategory;
	}
	public void setDesCategory(String desCategory) {
		this.desCategory = desCategory;
	}
	
	
	

}
