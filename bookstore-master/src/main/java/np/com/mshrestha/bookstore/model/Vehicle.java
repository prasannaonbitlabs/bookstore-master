package np.com.mshrestha.bookstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "vehicle")
public class Vehicle {
	
	@Id
	@Column(name="vehicleId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long vehicleId;
	
	public Long getId() {
		return vehicleId;
	}
	public void setId(Long vehicleId) {
		this.vehicleId = vehicleId;
	}
	private String regNumber;
	@ManyToOne
	@JoinColumn(name="vehicleTypeId")
	private VehicleType vehicleType;
	
	private String chassieNumber;
	private String enginNumger;
	private String modle;
	private String fuelType;
	private boolean isAcvehicle;
	private int seats;
	
	public String getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}
	public VehicleType getvehicleType() {
		return vehicleType;
	}
	public void setvehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}
	public String getChassieNumber() {
		return chassieNumber;
	}
	public void setChassieNumber(String chassieNumber) {
		this.chassieNumber = chassieNumber;
	}
	public String getEnginNumger() {
		return enginNumger;
	}
	public void setEnginNumger(String enginNumger) {
		this.enginNumger = enginNumger;
	}
	public String getModle() {
		return modle;
	}
	public void setModle(String modle) {
		this.modle = modle;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public boolean isAcvehicle() {
		return isAcvehicle;
	}
	public void setAcvehicle(boolean isAcvehicle) {
		this.isAcvehicle = isAcvehicle;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	
	

}
