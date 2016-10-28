package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.ExpenseDao;
import np.com.mshrestha.bookstore.model.Expenses;




@Repository
public class ExpenseDaoImpl implements ExpenseDao {
	@Autowired
	private SessionFactory sessionFactory;

	
	public void saveExpenses(Expenses expenses) {
		getSession().merge(expenses);

	}

	public List<Expenses> listExpenses() {

		return getSession().createCriteria(Expenses.class).list();
	}

	public Expenses getExpenses(Long id) {
		return (Expenses) getSession().get(Expenses.class, id);
	}

	public void deleteExpenses(Long id) {

		Expenses expenses = getExpenses(id);

		if (null != expenses) {
			getSession().delete(expenses);
		}

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
