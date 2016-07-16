package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.DriverDao;
import np.com.mshrestha.bookstore.model.Driver;
import np.com.mshrestha.bookstore.service.DriverService;

@Service
public class DriverServiceImpl implements DriverService {
	
	@Autowired
	private DriverDao driverDao;

	@Transactional
	public void saveDriver(Driver person) {
		driverDao.saveDriver(person);
	}

	@Transactional(readOnly = true)
	public List<Driver> listDrivers() {
		return driverDao.listDrivers();
	}

	@Transactional(readOnly = true)
	public Driver getDriver(Long id) {
		return driverDao.getDriver(id);
	}

	@Transactional
	public void deleteDriver(Long id) {
		driverDao.deleteDriver(id);

	}
}
