package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Person;



public interface PersonService {


	/*
	 * CREATE and UPDATE 
	 */
	public void savePerson(Person book);

	/*
	 * READ
	 */
	public List<Person> listPersons();
	public Person getPerson(Long id);

	/*
	 * DELETE
	 */
	public void deletePerson(Long id);
	
	public Person doLogin(String email, String password);
}
