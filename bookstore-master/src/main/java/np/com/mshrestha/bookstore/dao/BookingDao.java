package np.com.mshrestha.bookstore.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.model.Booking;


public interface BookingDao {
	
	
		public void saveBooking(Booking booking); // create and update

		/*
		 * READ
		 */
		public List<Booking> listBookings();
		public Booking getBooking(Long id);
		public List<Booking> listConfirmBooking();

		/*
		 * DELETE
		 */
		public void deleteBooking(Long id);

}
