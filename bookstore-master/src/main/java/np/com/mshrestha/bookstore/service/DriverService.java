package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.Driver;

public interface DriverService {

	public void saveDriver(Driver driver);

	/*
	 * READ
	 */
	public List<Driver> listDrivers();
	public Driver getDriver(Long id);

	/*
	 * DELETE
	 */
	public void deleteDriver(Long id);
}
