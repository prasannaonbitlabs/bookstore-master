package np.com.mshrestha.bookstore.dao;

import java.util.List;


import np.com.mshrestha.bookstore.model.Person;

public interface PersonDao {

	/*
	 * CREATE and UPDATE
	 */
	public void savePerson(Person person); // create and update

	/*
	 * READ
	 */
	public List<Person> listPersons();
	public Person getPerson(Long id);

	/*
	 * DELETE
	 */
	public void deletePerson(Long id);
}
