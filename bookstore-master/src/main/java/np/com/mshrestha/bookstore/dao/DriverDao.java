package np.com.mshrestha.bookstore.dao;

import java.util.List;

import np.com.mshrestha.bookstore.model.Driver;

public interface DriverDao {
	
	public void saveDriver(Driver driver); // create and update

	public List<Driver> listDrivers();
	public Driver getDriver(Long id);
	public void deleteDriver(Long id);

}
