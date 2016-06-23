package np.com.mshrestha.bookstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import np.com.mshrestha.bookstore.dao.AdminUserDao;
import np.com.mshrestha.bookstore.model.AdminUser;
import np.com.mshrestha.bookstore.service.AdminUserService;

@Service
public class AdminUserServiceImpl implements AdminUserService{
	
	@Autowired
	private AdminUserDao adminUserDao;

	@Transactional
	public void saveAdminUser(AdminUser adminUser) {
		adminUserDao.saveAdminUser(adminUser);
		
	}

	@Transactional
	public List<AdminUser> listAdminUser() {
		return adminUserDao.listAdminUser();
	}

	@Transactional
	public AdminUser doLogin(String username, String password) {
		// TODO Auto-generated method stub
		return adminUserDao.doLogin(username, password);
	}

	@Transactional
	public void deleteAdminUser(Long id) {
		adminUserDao.deleteAdminUser(id);
		
	}

	

}
