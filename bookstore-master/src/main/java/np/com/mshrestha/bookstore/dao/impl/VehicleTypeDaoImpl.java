package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.VehicleTypeDao;
import np.com.mshrestha.bookstore.model.VehicleType;



@Repository
public class VehicleTypeDaoImpl implements VehicleTypeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveVehicleType(VehicleType VehicleType) {
		getSession().merge(VehicleType);
		
	}

	public List<VehicleType> listVehicleTypes() {
		return getSession().createCriteria(VehicleType.class).list();
	}

	public VehicleType getVehicleType(Long id) {
		return (VehicleType) getSession().get(VehicleType.class, id);
	}

	public void deleteVehicleType(Long id) {
		
		VehicleType VehicleType = getVehicleType(id);

		if (null != VehicleType) {
			getSession().delete(VehicleType);
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
