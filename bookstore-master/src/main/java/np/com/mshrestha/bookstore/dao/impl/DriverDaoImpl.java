package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.DriverDao;
import np.com.mshrestha.bookstore.model.Driver;


@Repository
public class DriverDaoImpl implements DriverDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void saveDriver(Driver driver) {
		getSession().merge(driver);

	}

	public List<Driver> listDrivers() {

		return getSession().createCriteria(Driver.class).list();
	}

	public Driver getDriver(Long id) {
		return (Driver) getSession().get(Driver.class, id);
	}

	public void deleteDriver(Long id) {

		Driver driver = getDriver(id);

		if (null != driver) {
			getSession().delete(driver);
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
