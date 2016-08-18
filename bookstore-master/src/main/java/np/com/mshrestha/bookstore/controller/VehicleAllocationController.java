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
import np.com.mshrestha.bookstore.service.VehicleAllocationService;

@Controller
@RequestMapping("/vehicleAllocation")
public class VehicleAllocationController {
	
	@Autowired
	private VehicleAllocationService vehicleAllocationService;
	
	@RequestMapping(value = { "/", "/listVehicleAllocation" })
	public String listVehicleAllocation(ModelMap  map,HttpServletRequest req) {
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicleAllocation", new VehicleAllocation());
			map.put("vehicleAllocationList", vehicleAllocationService.listVehicleAllocation());

			return "/vehicleAllocation/listVehicleAllocation";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "/admin/logginFrom";
		}

		
	}

	@RequestMapping("/get/{vehicleAllocationId}")
	public String getVehicleAllocation(@PathVariable Long vehicleAllocationId, 
			Map<String, Object> map,HttpServletRequest req) {
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			VehicleAllocation vehicleAllocation = vehicleAllocationService.getVehicleAllocation(vehicleAllocationId);

			map.put("vehicleAllocation", vehicleAllocation);

			return "/vehicleAllocation/vehicleAllocationForm";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "/admin/logginFrom";
		}
	}
	
	
	@RequestMapping(value = "/vehicleAllocation", method = RequestMethod.GET)
	public String vehicleAllocation(@ModelAttribute("vehicleAllocation") VehicleAllocation vehicleAllocation,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {
		
		
		if (req.getSession().getAttribute("adminUser")!=null){
			map.put("vehicleAllocation", new VehicleAllocation());
		    map.put("vehicleAllocationId", "1");
		    
		    System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaa");
		    return "dashboard";
			
		}else {
			map.put("adminUser",new AdminUser());
			return "/admin/logginFrom";
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
			return "/admin/logginFrom";
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
			return "/admin/logginFrom";
		}


		
	}

}
