package student.admin.service;

import student.admin.persistence.LoginDao;
import student.admin.persistence.LoginHibernateDao;



public class LoginDaoService implements LoginService {
	
	private LoginDao logindao=new LoginHibernateDao();
	
	
}
