package np.com.mshrestha.bookstore.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import np.com.mshrestha.bookstore.model.AdminUser;
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
	public String listBooking(Map<String, Object> map,HttpServletRequest req) {

		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("booking", new Booking());
			map.put("bookingList", bookingService.listBookings());
	        map.put("bookingListId","1");
			return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
	}

	@RequestMapping("/get/{bookingId}")
	public String getBooking(@PathVariable Long bookingId, Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			Booking booking = bookingService.getBooking(bookingId);
			
			Map<String,String> vehicleTypeList = new LinkedHashMap<String,String>();
			vehicleTypeList.put("VAN","VAN");
			vehicleTypeList.put("CAR","CAR");
			vehicleTypeList.put("THREE WEEL","THREE WEEL");

			map.put("vehicleTypeId", booking.getVehicalType()); 
			map.put("vehicleTypeList", vehicleTypeList);
			
			
			
			Map<String,String> comfortableTypeList = new LinkedHashMap<String,String>();
			comfortableTypeList.put("AC","AC");
			comfortableTypeList.put("NON AC","NON AC");

			map.put("comfortableTypeId", booking.getComfortableType()); 
			map.put("comfortableTypeList", comfortableTypeList);

			

			Map<String,String> statusList = new LinkedHashMap<String,String>();
			statusList.put("pending","pending");
			statusList.put("confirm","confirm");
			statusList.put("cancel","cancel");

			map.put("statusId", booking.getStatus()); 
			map.put("statusList", statusList);
			
			map.put("booking", booking);
			map.put("adminBooking", "1");
			return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}


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
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			Map<String,String> vehicleTypeList = new LinkedHashMap<String,String>();
			vehicleTypeList.put("VAN","VAN");
			vehicleTypeList.put("CAR","CAR");
			vehicleTypeList.put("THREE WEEL","THREE WEEL");
	
			map.put("vehicleTypeId", "THREE WEEL"); 
			map.put("vehicleTypeList", vehicleTypeList);
			
			
			
			Map<String,String> comfortableTypeList = new LinkedHashMap<String,String>();
			comfortableTypeList.put("AC","AC");
			comfortableTypeList.put("NON AC","NON AC");
	
			map.put("vehicleTypeId", "AC"); 
			map.put("comfortableTypeList", comfortableTypeList);

			

			Map<String,String> statusList = new LinkedHashMap<String,String>();
			statusList.put("pending","pending");
			statusList.put("confirm","confirm");
			statusList.put("cancel","cancel");
	
			map.put("statusId", "pending"); 
			map.put("statusList", statusList);
			
			

		    map.put("booking", new Booking());
		    map.put("adminBooking", "1");
		    return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
			
		   
	}
	
	

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveBooking(@ModelAttribute("booking") Booking booking,
			BindingResult result,Map<String, Object> map) {
		
		    System.out.println("booking time  " + booking.getTime());
		
			bookingService.saveBooking(booking);
			return "redirect:listBooking";
		
	}

	@RequestMapping("/delete/{bookingId}")
	public String deleteBooking(@PathVariable("bookingId") Long id,Map<String, Object> map,
			HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			bookingService.deleteBooking(id);
			return "redirect:/booking/listBooking";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}
}
