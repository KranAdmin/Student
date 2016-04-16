package student.actionDispatcherFilter;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;


public class Struts2Dispatcher extends StrutsPrepareAndExecuteFilter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		super.init(filterConfig);
		try {
			HibernateUtil.createSessionFactory();
			System.out.print("application initialized successfully");
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

}
