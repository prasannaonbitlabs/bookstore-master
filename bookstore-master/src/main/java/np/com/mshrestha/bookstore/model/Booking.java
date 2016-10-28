package np.com.mshrestha.bookstore.model;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name = "booking")
public class Booking {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String customerName;
	private String telephonenumber;
	private String streetAdress;
	private String adressLineTwo;
	private String city;
	private String destination;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private Date dateFrom;
	private Date dateTo;
	@Transient
	private String DateTime;
	private Double EsstimatedKm;
	private String vehicalType;
	private String comfortableType;
	private String email;
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getStreetAdress() {
		return streetAdress;
	}
	public String getTelephonenumber() {
		return telephonenumber;
	}
	public void setTelephonenumber(String telephonenumber) {
		this.telephonenumber = telephonenumber;
	}
	public void setStreetAdress(String streetAdress) {
		this.streetAdress = streetAdress;
	}
	public String getAdressLineTwo() {
		return adressLineTwo;
	}
	public void setAdressLineTwo(String adressLineTwo) {
		this.adressLineTwo = adressLineTwo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Date getDateFrom() {
		return dateFrom;
	}
	
	public Date getDateTo() {
		return dateTo;
	}
	public void setDateTo(Date dateTo) {
		this.dateTo = dateTo;
	}
	
	public Double getEsstimatedKm() {
		return EsstimatedKm;
	}
	public void setEsstimatedKm(Double esstimatedKm) {
		EsstimatedKm = esstimatedKm;
	}
	public String getVehicalType() {
		return vehicalType;
	}
	public void setVehicalType(String vehicalType) {
		this.vehicalType = vehicalType;
	}
	public String getComfortableType() {
		return comfortableType;
	}
	public void setComfortableType(String comfortableType) {
		this.comfortableType = comfortableType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	public void setDateFrom(java.util.Date date) {
		this.dateFrom = date;
	}

	
	
	

}
