package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.BookingDao;
import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.service.BookingService;

@Service
public class BookingServiceImpl implements BookingService {

	
	@Autowired
	private BookingDao bookingDao;
	
	@Transactional
	public void saveBooking(Booking booking) {
		bookingDao.saveBooking(booking);
	}
	
	@Transactional(readOnly = true)
	public List<Booking> listBookings() {
		return bookingDao.listBookings();
	}
	@Transactional(readOnly = true)
	public Booking getBooking(Long id) {
		return bookingDao.getBooking(id);
	}
	@Transactional
	public void deleteBooking(Long id) {
		bookingDao.deleteBooking(id);;
	}

	@Transactional(readOnly = true)
	public List<Booking> listConfirmBooking() {
		// TODO Auto-generated method stub
		return bookingDao.listConfirmBooking();
	}

}
