package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import np.com.mshrestha.bookstore.dao.PersonDao;

import np.com.mshrestha.bookstore.model.Person;
import np.com.mshrestha.bookstore.service.PersonService;



@Service
public class PersonServiceImpl implements PersonService {
	

	@Autowired
	private PersonDao personDao;

	@Transactional
	public void savePerson(Person person) {
		personDao.savePerson(person);
	}

	@Transactional(readOnly = true)
	public List<Person> listPersons() {
		return personDao.listPersons();
	}

	@Transactional(readOnly = true)
	public Person getPerson(Long id) {
		return personDao.getPerson(id);
	}

	@Transactional
	public void deletePerson(Long id) {
		personDao.deletePerson(id);

	}

	@Transactional
	public Person doLogin(String email, String password) {
		// TODO Auto-generated method stub
		return personDao.doLogin(email, password);
	}

	@Transactional
	public void updateUserStatus(String seesionId) {
		personDao.updateUserStatus(seesionId);
		
	}

}
