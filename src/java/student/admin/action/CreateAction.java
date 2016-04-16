package student.admin.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import student.admin.service.CreateService;
import student.admin.service.CreateServiceDao;
import student.admin.vo.StudentDataBean;

import com.opensymphony.xwork2.ActionSupport;

public class CreateAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware, SessionAware {

	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	HttpServletResponse response;
	Map<String, Object> session;
	int id;
	String name;
	int age;
	String address;
	String department;
	Boolean update=false;
	public List<StudentDataBean> students;
	public CreateService service = new CreateServiceDao();
	StudentDataBean student = new StudentDataBean();

	public String addStudentList() {
		System.out.println("SuccessFully Entered into Bean");
		service.addStudentList(student);
		return SUCCESS;
	}
	
	public String getStudentsList() {
		students = service.getStudentsList();
		return SUCCESS;
	}

	public String getStudentEdit() {
		int sid = Integer.parseInt(request.getParameter("id"));
		student = service.getStudent(sid);
		students = service.getStudentsList();
		setUpdate(true);
		return SUCCESS;
	}

	public String deleteStudent() {
		int sid = Integer.parseInt(request.getParameter("id"));
		System.out.println("SuccessFully Entered into Bean");
		service.deleteStudent(sid);
		return SUCCESS;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public List<StudentDataBean> getStudents() {
		return students;
	}

	public void setStudents(List<StudentDataBean> students) {
		this.students = students;
	}

	public StudentDataBean getStudent() {
		return student;
	}

	public void setStudent(StudentDataBean student) {
		this.student = student;
	}

	public Boolean getUpdate() {
		return update;
	}

	public void setUpdate(Boolean update) {
		this.update = update;
	}
	
}
