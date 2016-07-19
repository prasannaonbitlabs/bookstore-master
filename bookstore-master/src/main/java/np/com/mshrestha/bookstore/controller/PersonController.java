package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import javax.persistence.Transient;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import np.com.mshrestha.bookstore.model.Booking;
import np.com.mshrestha.bookstore.model.Person;
import np.com.mshrestha.bookstore.service.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Autowired
	private PersonService personService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("person")  Person person,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {
		   
	
		    if ((Person)req.getSession().getAttribute("person")!= null){
		    	map.put("booking", new Booking());
		    	return "/booking/booking";
		    	
		    }else{
		    	map.put("person", new Person());
		    	return "/person/login";
		    }
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut(@ModelAttribute("person")  Person person,
			BindingResult result,Map<String, Object> map, HttpServletRequest req) {
		   
	
		    if ((Person)req.getSession().getAttribute("person")!= null){
		    	map.put("person", new Person());
		    	req.getSession().setAttribute("person", null);
		    	return "/person/login";
		    	
		    }else{
		    	map.put("person", new Person());
		    	return "/person/login";
		    }
	}
	
	
	
	@RequestMapping(value = "/personlogin", method = RequestMethod.POST)
	public String personlogin(@ModelAttribute("person")  Person person,
			BindingResult result,Map<String, Object> map,HttpServletRequest req) {
		    map.put("booking", new Booking());
		    
		    String loginMsg = "Login Success!";
			try {
				
				person = personService.doLogin(person.getEmail(),person.getPassword());
				if(person==null){
					loginMsg = "Invalid Email or Passwords";
					map.put("status","-1");
					map.put("msg",loginMsg);
					return "/person/login";
				}else{
					map.put("status","0");
					map.put("msg",loginMsg);
					HttpSession sess = req.getSession();
					sess.setAttribute("person", person);
				}

			} catch (Exception e) {
				e.printStackTrace();
				map.put("status","-1");
				loginMsg = "Unknown Error Occured!";
				map.put("msg",loginMsg);
			}
			return "/booking/booking";
	}

	
	@RequestMapping(value = { "/", "/listPerson" })
	public String listPerson(Map<String, Object> map) {

		map.put("person", new Person());
		map.put("personList", personService.listPersons());

		return "/person/listPersons";
	}

	@RequestMapping("/get/{personId}")
	public String getPerson(@PathVariable Long personId, Map<String, Object> map) {
         System.out.println("person Id " + personId);
		Person person = personService.getPerson(personId);

		map.put("person", person);

		return "/person/personForm";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("person") Person person,
			BindingResult result,Map<String, Object> map) {

		System.out.println("abc");
		   map.put("person", new Person());

		return "/person/register";
	}


	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String savePerson(HttpServletRequest request,
			@RequestParam("firstName") String firstName, 
			@RequestParam("lastName") String lastName, 
			@RequestParam("address") String address,
			@RequestParam("city") String city,
			@RequestParam("age") int age,
			@RequestParam("password") String password,
			@RequestParam("confirmpassword") String confirmpassword,
			@RequestParam("email") String email,
			@RequestParam("confirmemail") String confirmemail,
			@RequestParam("id") Long id,
			Map<String, Object> map) {
		
		if (!password.equals(confirmpassword)){
			map.put("massage","confirm password not match with password" );
			return "/person/register";
		}else if(!email.equals(confirmemail)){
			map.put("massage","confirm email not match with email" );
			return "/person/register";	
				
		}else{
			 
			Person person = new Person();
			person.setFirstName(firstName);
			person.setLastName(lastName);
			person.setAddress(address);
			person.setCity(city);
			person.setAge(age);
			person.setPassword(confirmpassword);
			person.setEmail(confirmemail);
			person.setId(id);
			
			personService.savePerson(person);
			return "redirect:listPerson";
		}
		
	}

	@RequestMapping("/delete/{personId}")
	public String deletePerson(@PathVariable("personId") Long id) {

		personService.deletePerson(id);
		return "redirect:/person/listPerson";
	}
}
