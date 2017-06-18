package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@Table(name = "CONTACT")
@Entity
public class Contact {
	@GeneratedValue
	@Id
	private int idConTact;
	
	@Column(name = "EMAIL", nullable = false)
	private String email;
	@Column(name = "CONTENT", nullable= false, columnDefinition = "NVARCHAR(1000)")
	private String content;
	@Column(name= "NAME", nullable = false , columnDefinition = "NVARCHAR(200)")
	private String fullName;
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getIdConTact() {
		return idConTact;
	}
	public void setIdConTact(int idConTact) {
		this.idConTact = idConTact;
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
	
	
}
