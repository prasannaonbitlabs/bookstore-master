package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.VehicleAllocationDao;
import np.com.mshrestha.bookstore.model.VehicleAllocation;
import np.com.mshrestha.bookstore.service.VehicleAllocationService;

@Service
public class VehicleAllocationServiceImpl implements VehicleAllocationService {

	
	@Autowired
	private VehicleAllocationDao vehicleAllocationDao;
	
	@Transactional
	public void saveVehicleAllocation(VehicleAllocation vehicleAllocation) {
		vehicleAllocationDao.saveVehicleAllocation(vehicleAllocation);

	}

	@Transactional
	public List<VehicleAllocation> listVehicleAllocation() {
		return vehicleAllocationDao.listVehicleAllocation();
	}

	@Transactional
	public VehicleAllocation getVehicleAllocation(Long id) {
		return vehicleAllocationDao.getVehicleAllocation(id);
	}

	@Transactional
	public void deleteVehicleAllocation(Long id) {
		vehicleAllocationDao.deleteVehicleAllocation(id);

	}

}
