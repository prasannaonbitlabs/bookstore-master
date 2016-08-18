package np.com.mshrestha.bookstore.service;

import java.util.List;


import np.com.mshrestha.bookstore.model.VehicleAllocation;

public interface VehicleAllocationService {
	
	/*
	 * CREATE and UPDATE 
	 */
	public void saveVehicleAllocation(VehicleAllocation vehicleAllocation);

	/*
	 * READ
	 */
	public List<VehicleAllocation> listVehicleAllocation();
	public VehicleAllocation getVehicleAllocation(Long id);

	/*
	 * DELETE
	 */
	public void deleteVehicleAllocation(Long id);

}
