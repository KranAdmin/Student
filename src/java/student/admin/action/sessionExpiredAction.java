package student.admin.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class sessionExpiredAction implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init() {
	}

	public void destroy() {
	}


	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext()
				.getSession();
		if (session.isEmpty() || null == session) {
			return "session";
		}
		return invocation.invoke();
	}
}
