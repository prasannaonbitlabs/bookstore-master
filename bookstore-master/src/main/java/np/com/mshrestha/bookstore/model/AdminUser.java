package np.com.mshrestha.bookstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="ADMIN_USER")
public class AdminUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ADMIN_ID", unique = true, insertable = false, updatable = false)
	private long m_adminId;
	
	@Column(name = "USER_NAME", length = 100)
	private String userName;
	
	@Column(name = "PWD", length = 100)
	private String password;
	
	@Column(name = "ADMIN_STATUS", length = 10)
	private String status;

	public long getM_adminId() {
		return m_adminId;
	}

	public void setM_adminId(long m_adminId) {
		this.m_adminId = m_adminId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
