package np.com.mshrestha.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import np.com.mshrestha.bookstore.dao.AdminUserDao;
import np.com.mshrestha.bookstore.model.AdminUser;


@Repository
public class AdminUserDaoImpl implements AdminUserDao{
	@Autowired
	private SessionFactory sessionFactory;

	
	public void saveAdminUser(AdminUser adminManager) {
		// TODO Auto-generated method stub
		
	}

	
	public List<AdminUser> listAdminUser() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public AdminUser doLogin(String username, String password) {
		AdminUser adminUser = null;
		
		adminUser = (AdminUser)getSession().createQuery("from AdminUser where userName = ? and password = ?")
		        .setString(0, username).setString(1, password).uniqueResult();
	
		return adminUser;
	}

	
	public void deleteAdminUser(Long id) {
		// TODO Auto-generated method stub
		
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
