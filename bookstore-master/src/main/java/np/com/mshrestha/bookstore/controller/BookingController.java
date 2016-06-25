package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.service.BookingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Booking")
public class BookingController {

	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = { "/", "/listBooking" })
	public String listBooking(Map<String, Object> map) {

		map.put("Booking", new Booking());
		map.put("BookingList", bookingService.listBookings());

		return "/Booking/listBookings";
	}

	@RequestMapping("/get/{BookingId}")
	public String getBooking(@PathVariable Long BookingId, Map<String, Object> map) {
         System.out.println("Booking Id " + BookingId);
		Booking Booking = bookingService.getBooking(BookingId);

		map.put("Booking", Booking);

		return "/Booking/BookingForm";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("Booking") Booking Booking,
			BindingResult result,Map<String, Object> map) {

		   map.put("Booking", new Booking());

		return "/Booking/register";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveBooking(@ModelAttribute("Booking") Booking Booking,
			BindingResult result,Map<String, Object> map) {
		
			bookingService.saveBooking(Booking);
			return "redirect:listBooking";
		
	}

	@RequestMapping("/delete/{BookingId}")
	public String deleteBooking(@PathVariable("BookingId") Long id) {

		bookingService.deleteBooking(id);
		return "redirect:/Booking/listBooking";
	}
}
