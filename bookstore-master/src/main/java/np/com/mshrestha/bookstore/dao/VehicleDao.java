package np.com.mshrestha.bookstore.dao;

import java.util.List;

import np.com.mshrestha.bookstore.model.Vehicle;

public interface VehicleDao {
	/*
	 * CREATE and UPDATE
	 */
	public void saveVehicle(Vehicle vehicle); // create and update

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
