package np.com.mshrestha.bookstore.service;

import java.util.List;

import np.com.mshrestha.bookstore.controller.AdminManager;
import np.com.mshrestha.bookstore.model.AdminUser;

public interface AdminUserService {
	
	/*
	 * CREATE and UPDATE 
	 */
	public void saveAdminUser(AdminUser adminUser);

	/*
	 * READ
	 */
	public List<AdminUser> listAdminUser();
	public AdminUser doLogin(String username, String password);

	/*
	 * DELETE
	 */
	public void deleteAdminUser(Long id);

}
