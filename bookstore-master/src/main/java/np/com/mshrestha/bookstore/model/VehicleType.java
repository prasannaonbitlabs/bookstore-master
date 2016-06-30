package np.com.mshrestha.bookstore.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "vehicalType")
public class VehicleType {
	@Id
	@Column(name="vehicalTypeId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long vehicalTypeId;
	private String vehicalType;
	@OneToMany(mappedBy="vehical")
	private Set<Vehicle> vehical;
	
	
	public Long getId() {
		return vehicalTypeId;
	}
	public Set<Vehicle> getVehical() {
		return vehical;
	}
	public void setVehical(Set<Vehicle> vehical) {
		this.vehical = vehical;
	}
	public void setId(Long vehicalTypeId) {
		this.vehicalTypeId = vehicalTypeId;
	}
	public String getVehicalType() {
		return vehicalType;
	}
	public void setVehicalType(String vehicalType) {
		this.vehicalType = vehicalType;
	}

}
