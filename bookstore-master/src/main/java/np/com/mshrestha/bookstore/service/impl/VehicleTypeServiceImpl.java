package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.VehicleTypeDao;
import np.com.mshrestha.bookstore.model.VehicleType;
import np.com.mshrestha.bookstore.service.VehicleTypeService;


@Service
public class VehicleTypeServiceImpl implements VehicleTypeService {


	@Autowired
	private VehicleTypeDao VehicleTypeDao;

	@Transactional
	public void saveVehicleType(VehicleType VehicleType) {
		VehicleTypeDao.saveVehicleType(VehicleType);
	}

	@Transactional(readOnly = true)
	public List<VehicleType> listVehicleTypes() {
		return VehicleTypeDao.listVehicleTypes();
	}

	@Transactional(readOnly = true)
	public VehicleType getVehicleType(Long id) {
		return VehicleTypeDao.getVehicleType(id);
	}

	@Transactional
	public void deleteVehicleType(Long id) {
		VehicleTypeDao.deleteVehicleType(id);

	}


}
