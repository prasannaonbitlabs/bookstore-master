package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.model.VehicleAllocation;
import np.com.mshrestha.bookstore.service.BookingService;
import np.com.mshrestha.bookstore.service.DriverService;
import np.com.mshrestha.bookstore.service.VehicleAllocationService;
import np.com.mshrestha.bookstore.service.VehicleService;

@Controller
@RequestMapping("/vehicleAllocation")
public class VehicleAllocationController {
	
	@Autowired
	private VehicleAllocationService vehicleAllocationService;
	@Autowired
	private BookingService bookingService;
	@Autowired
	private VehicleService vehicleService;
	@Autowired
	private DriverService driverService;

	@RequestMapping(value = { "/", "/listVehicleAllocation" })
	public String listVehicleAllocation(ModelMap  map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicleAllocation", new VehicleAllocation());
			map.put("vehicleAllocationList", vehicleAllocationService.listVehicleAllocation());
			map.put("listVehicleAllocationId", "1");
		    return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
		
	}

	@RequestMapping("/get/{vehicleAllocationId}")
	public String getVehicleAllocation(@PathVariable Long vehicleAllocationId, 
			Map<String, Object> map,HttpServletRequest req) {
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			Booking booking = bookingService.getBooking(vehicleAllocationId);
			VehicleAllocation vehicleAllocation  = new VehicleAllocation();
			vehicleAllocation.setStatus(booking.getStatus());
			vehicleAllocation.setBookingId(vehicleAllocationId);
			vehicleAllocation.setStartFrom(booking.getCity());
			vehicleAllocation.setDestination(booking.getDestination());
			vehicleAllocation.setVehicletype(booking.getVehicalType());
			vehicleAllocation.setComfortableType(booking.getComfortableType());
			vehicleAllocation.setFromDate(booking.getDateFrom());
			
            map.put("VehicaleRegNumberList", vehicleService.listVehicles());
            map.put("DriversNameList", driverService.listDrivers());
			map.put("vehicleAllocation", vehicleAllocation);
			map.put("vehicleAllocationId", "1");
		    return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
	}
	
	
	@RequestMapping(value = "/vehicleAllocation", method = RequestMethod.GET)
	public String vehicleAllocation(@ModelAttribute("vehicleAllocation") VehicleAllocation vehicleAllocation,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicleAllocation", new VehicleAllocation());
		    map.put("vehicleAllocationId", "1");
		    
		    return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}
		
		
	}
	
	

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveVehicleAllocation(@ModelAttribute("vehicleAllocation") VehicleAllocation vehicleAllocation,
			BindingResult result,Map<String, Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			vehicleAllocationService.saveVehicleAllocation(vehicleAllocation);

			return "redirect:listVehicleAllocation";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}

		
	}

	@RequestMapping("/delete/{vehicleAllocationId}")
	public String deleteVehicleAllocation(@PathVariable("vehicleAllocationId") Long id,Map<String, 
			Object> map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			vehicleAllocationService.deleteVehicleAllocation(id);

			return "redirect:/vehicleAllocation/listVehicleAllocation";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "redirect:/admin/login";
		}


		
	}

}
