package np.com.mshrestha.bookstore.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table(name = "booking")
public class Booking {
	
	private Long id;
	private String customerName;
	private int telephonenumber;
	private String streetAdress;
	private String adressLineTwo;
	private String city;
	private String destination;
	private Date dateFrom;
	private Date dateTo;
	private Date time;
	private Double EsstimatedKm;
	private String vehicalType;
	private String ComfortableType;
	private String email;
	
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
	public int getTelephonenumber() {
		return telephonenumber;
	}
	public void setTelephonenumber(int telephonenumber) {
		this.telephonenumber = telephonenumber;
	}
	public String getStreetAdress() {
		return streetAdress;
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
	public void setDateFrom(Date dateFrom) {
		this.dateFrom = dateFrom;
	}
	public Date getDateTo() {
		return dateTo;
	}
	public void setDateTo(Date dateTo) {
		this.dateTo = dateTo;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
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
		return ComfortableType;
	}
	public void setComfortableType(String comfortableType) {
		ComfortableType = comfortableType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	

}
