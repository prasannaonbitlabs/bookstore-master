package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.VehicleDao;
import np.com.mshrestha.bookstore.model.Vehicle;
import np.com.mshrestha.bookstore.service.VehicleService;

@Service
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	private VehicleDao VehicleDao;

	@Transactional
	public void saveVehicle(Vehicle Vehicle) {
		VehicleDao.saveVehicle(Vehicle);
	}

	@Transactional(readOnly = true)
	public List<Vehicle> listVehicles() {
		return VehicleDao.listVehicles();
	}

	@Transactional(readOnly = true)
	public Vehicle getVehicle(Long id) {
		return VehicleDao.getVehicle(id);
	}

	@Transactional
	public void deleteVehicle(Long id) {
		VehicleDao.deleteVehicle(id);

	}

}
