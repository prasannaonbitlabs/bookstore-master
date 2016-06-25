package np.com.mshrestha.bookstore.controller;

import java.util.Map;

import np.com.mshrestha.bookstore.model.Person;
import np.com.mshrestha.bookstore.service.BookService;
import np.com.mshrestha.bookstore.service.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Autowired
	private PersonService personService;

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
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("person") Person person,
			BindingResult result,Map<String, Object> map) {

		   map.put("person", new Person());

		return "/person/register";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String savePerson(@ModelAttribute("person") Person person,
			BindingResult result,Map<String, Object> map) {
		
		if (!person.getPassword().equals(person.getConfirmpassword())){
			map.put("massage","confirm password not match with password" );
			return "/person/register";
		}else if(person.getEmail().equals(person.getConfirmemail())){
			map.put("massage","confirm email not match with email" );
			return "/person/register";	
				
		}else{
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
