package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.BookingDao;
import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.model.Person;

@Repository
public class BookingDaoImpl implements BookingDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void saveBooking(Booking booking) {
		getSession().merge(booking);
		
	}

	public List<Booking> listBookings() {
		return getSession().createCriteria(Booking.class).list();
	}

	public Booking getBooking(Long id) {
		return (Booking) getSession().get(Booking.class, id);
	}

	public void deleteBooking(Long id) {
		
		Booking booking = getBooking(id);

		if (null != booking) {
			getSession().delete(booking);
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

	public List<Booking> listConfirmBooking() {

		return getSession().createCriteria(Booking.class)
			    .add(Restrictions.eq("status", "confirm")).list();
	}


}
