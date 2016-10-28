package np.com.mshrestha.bookstore.dao;

import java.util.List;

import np.com.mshrestha.bookstore.model.Expenses;

public interface ExpenseDao {
	
	public void saveExpenses(Expenses expenses); // create and update

	public List<Expenses> listExpenses();
	public Expenses getExpenses(Long id);
	public void deleteExpenses(Long id);

}
