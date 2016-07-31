package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import np.com.mshrestha.bookstore.dao.PersonDao;
import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.model.Person;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonDAOImpl implements PersonDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void savePerson(Person person) {
		getSession().merge(person);

	}

	@SuppressWarnings("unchecked")
	public List<Person> listPersons() {

		return getSession().createCriteria(Person.class).list();
	}

	public Person getPerson(Long id) {
		return (Person) getSession().get(Person.class, id);
	}

	public void deletePerson(Long id) {

		Person person = getPerson(id);

		if (null != person) {
			getSession().delete(person);
		}

	}
	
	
	public void updateUserStatus(String sessionId) {
		String hqlUpdate = "update Person p set p.userStatus = :newStatus where p.sessionId = :sessionId";
		getSession().createQuery( hqlUpdate )
		        .setString( "newStatus", "active" )
		        .setString( "sessionId", sessionId )
		        .executeUpdate();
		
	}
	
	public Person doLogin(String email, String password) {
		Person person = null;
		person = (Person)getSession().createQuery("from Person where email = ? and password = ? and userStatus = ?")
		        .setString(0, email).setString(1, password).setString(2, "active").uniqueResult();
	
		return person;
	}

	private Session getSession() {
		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	

	
	
	
}
