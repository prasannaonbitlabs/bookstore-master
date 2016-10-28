package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import np.com.mshrestha.bookstore.dao.ExpenseDao;
import np.com.mshrestha.bookstore.model.Expenses;
import np.com.mshrestha.bookstore.service.ExpenseService;

@Service
public class ExpenseServiceImpl implements ExpenseService {

	@Autowired
	private ExpenseDao expenseDao;
	
	@Transactional
	public void saveExpenses(Expenses booking) {
		expenseDao.saveExpenses(booking);
	}
	
	@Transactional(readOnly = true)
	public List<Expenses> listExpenses() {
		return expenseDao.listExpenses();
	}
	@Transactional(readOnly = true)
	public Expenses getExpenses(Long id) {
		return expenseDao.getExpenses(id);
	}
	@Transactional
	public void deleteExpenses(Long id) {
		expenseDao.deleteExpenses(id);;
	}

	

}
