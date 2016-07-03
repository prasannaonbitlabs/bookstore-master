package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.Vehicle;

public interface VehicleService {
	
	/*
	 * CREATE and UPDATE 
	 */
	public void saveVehicle(Vehicle vehicle);

	/*
	 * READ
	 */
	public List<Vehicle> listVehicles();
	public Vehicle getVehicle(Long id);

	/*
	 * DELETE
	 */
	public void deleteVehicle(Long id);

}
