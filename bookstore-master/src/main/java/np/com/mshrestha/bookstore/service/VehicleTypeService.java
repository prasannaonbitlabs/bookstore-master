package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.VehicleType;

public interface VehicleTypeService {
	
	/*
	 * CREATE and UPDATE 
	 */
	public void saveVehicleType(VehicleType VehicleType);

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
