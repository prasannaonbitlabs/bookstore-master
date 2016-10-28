package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.model.Booking;

public interface BookingService {
	
	/*
	 * CREATE and UPDATE 
	 */
	public void saveBooking(Booking booking);

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
