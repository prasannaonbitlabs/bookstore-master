package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.VehicleAllocationDao;
import np.com.mshrestha.bookstore.model.Person;
import np.com.mshrestha.bookstore.model.VehicleAllocation;

@Repository
public class VehicleAllocationDaoImpl implements VehicleAllocationDao {
	
	@Autowired
	private SessionFactory sessionFactory;


	public void saveVehicleAllocation(VehicleAllocation vehicleAllocation) {
		getSession().merge(vehicleAllocation);

	}


	public List<VehicleAllocation> listVehicleAllocation() {
		// TODO Auto-generated method stub
		return getSession().createCriteria(VehicleAllocation.class).list();
	}


	public VehicleAllocation getVehicleAllocation(Long id) {
		// TODO Auto-generated method stub
		return (VehicleAllocation) getSession().get(VehicleAllocation.class, id);
	}


	public void deleteVehicleAllocation(Long id) {
		VehicleAllocation vehicleAllocation = getVehicleAllocation(id);

		if (null != vehicleAllocation) {
			getSession().delete(vehicleAllocation);
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
