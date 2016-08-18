package np.com.mshrestha.bookstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.model.VehicleAllocation;


public interface VehicleAllocationDao {
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
