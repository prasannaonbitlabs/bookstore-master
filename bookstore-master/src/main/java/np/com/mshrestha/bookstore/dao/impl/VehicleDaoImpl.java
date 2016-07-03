package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.VehicleDao;
import np.com.mshrestha.bookstore.model.Vehicle;



@Repository
public class VehicleDaoImpl implements VehicleDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveVehicle(Vehicle vehicle) {
		getSession().merge(vehicle);
		
	}

	public List<Vehicle> listVehicles() {
		return getSession().createCriteria(Vehicle.class).list();
	}

	public Vehicle getVehicle(Long id) {
		return (Vehicle) getSession().get(Vehicle.class, id);
	}

	public void deleteVehicle(Long id) {
		
		Vehicle vehicle = getVehicle(id);

		if (null != vehicle) {
			getSession().delete(vehicle);
		}
		
	}
	
	private Session getSession() {
		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
