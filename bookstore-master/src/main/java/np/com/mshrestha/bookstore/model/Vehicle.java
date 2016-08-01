package np.com.mshrestha.bookstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "vehicle")
public class Vehicle {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	
	private String regNumber;
//	@ManyToOne
//	@JoinColumn(name="vehicleTypeId")
//	private VehicleType vehicleType;
	
	private String chassieNumber;
	private String enginNumger;
	private String modle;
	private String fuelType;
	private String acVehicle;
	private int seats;
	private String fileName;
	@Transient
	private MultipartFile file;
	
	
	/*public VehicleType getvehicleType() {
		return vehicleType;
	}
	public void setvehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}*/
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getChassieNumber() {
		return chassieNumber;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public String getAcVehicle() {
		return acVehicle;
	}
	public void setAcVehicle(String acVehicle) {
		this.acVehicle = acVehicle;
	}
	
	public String getRegNumber() {
		return regNumber;
	}
	
	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}
	
}
