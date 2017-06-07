package entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "USERDETAIl")
@Entity
public class User {
	@Column(name="ID_USER")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Id
	private int id;
	@Column(name="FULL_NAME", nullable= false)
	private String fullName;
	@Column(name="EMAIL", nullable=false, unique= true)
	private String email;
	@Column(name="PASSWORD")
	private String password;
	@OneToMany(mappedBy= "user")
	private List<Order> listOrder = new ArrayList<>();
	public List<Comment> getListComments() {
		return listComments;
	}
	public void setListComments(List<Comment> listComments) {
		this.listComments = listComments;
	}
	@OneToMany(mappedBy= "user")
	private List<Comment> listComments = new ArrayList<>();
	@OneToMany(mappedBy ="user")
	private List<SubComment> lisSubComments = new ArrayList<>();
	
	public int getId() {
		return id;
	}
	public List<Order> getListOrder() {
		return listOrder;
	}
	public void setListOrder(List<Order> listOrder) {
		this.listOrder = listOrder;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name ="PHONE_NUMBER")
	private int phoneNumber;
	@Column(name="ADDRESS")
	private String address;
	
}
