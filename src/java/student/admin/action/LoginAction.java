package student.admin.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware, SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	HttpServletResponse response;
	Map<String, Object> session;

	String username;
	String password;
 
	public String execute(){
		if (username==null || username.isEmpty()) {
			addFieldError("username", "Enter Username");
			return INPUT;
		} else if (password==null || password.isEmpty()) {
			addFieldError("password", "Enter Password");
			return INPUT;
		} else if (!username.equals("root") || !password.equals("pass")) {
			addFieldError("username", "UserName or Password is Wrong!!!");
			return INPUT;
		}else if(username.equals("root")&&password.equals("pass")){
			session.put("login", "success");
			return SUCCESS;	
		}
		else {
			session.put("login", "input");
			return INPUT;

		}
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
