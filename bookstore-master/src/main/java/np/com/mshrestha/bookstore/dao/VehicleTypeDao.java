package np.com.mshrestha.bookstore.dao;

import java.util.List;

import np.com.mshrestha.bookstore.model.VehicleType;

public interface VehicleTypeDao {
	
	/*
	 * CREATE and UPDATE
	 */
	public void saveVehicleType(VehicleType VehicleType); // create and update

	/*
	 * READ
	 */
	public List<VehicleType> listVehicleTypes();
	public VehicleType getVehicleType(Long id);

	/*
	 * DELETE
	 */
	public void deleteVehicleType(Long id);

}
