package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.model.Person;
import np.com.mshrestha.bookstore.service.BookingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/booking")
public class BookingController {

	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = { "/", "/listBooking" })
	public String listBooking(Map<String, Object> map) {

		map.put("booking", new Booking());
		map.put("bookingList", bookingService.listBookings());
        map.put("bookingListId","1");
		return "dashboard";
	}

	@RequestMapping("/get/{bookingId}")
	public String getBooking(@PathVariable Long bookingId, Map<String, Object> map) {
         System.out.println("Booking Id " + bookingId);
		Booking Booking = bookingService.getBooking(bookingId);

		map.put("Booking", Booking);

		return "/booking/bookingForm";
	}
	
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String register(@ModelAttribute("booking") Booking Booking,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {

		   map.put("booking", new Booking());
		   
		   if ((Person)req.getSession().getAttribute("person")!= null){
		    	map.put("booking", new Booking());
		    	return "/booking/booking";
		    	
		    }else{
		    	map.put("person", new Person());
		    	return "/person/login";
		    }
	}
	@RequestMapping(value = "/adminBooking", method = RequestMethod.GET)
	public String adminBooking(@ModelAttribute("booking") Booking Booking,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {

		   map.put("booking", new Booking());

		   map.put("booking", new Booking());
		   map.put("adminBooking", "1");
		   return "dashboard";
		   
	}
	
	

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveBooking(@ModelAttribute("booking") Booking booking,
			BindingResult result,Map<String, Object> map) {
		
		    System.out.println("booking time  " + booking.getTime());
		
			bookingService.saveBooking(booking);
			return "redirect:listBooking";
		
	}

	@RequestMapping("/delete/{bookingId}")
	public String deleteBooking(@PathVariable("bookingId") Long id) {

		bookingService.deleteBooking(id);
		return "redirect:/booking/listBooking";
	}
}
