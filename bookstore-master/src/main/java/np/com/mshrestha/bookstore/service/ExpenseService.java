package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.model.Expenses;

public interface ExpenseService {
	public void saveExpenses(Expenses expenses);

	/*
	 * READ
	 */
	public List<Expenses> listExpenses();
	public Expenses getExpenses(Long id);

	/*
	 * DELETE
	 */
	public void deleteExpenses(Long id);
}
