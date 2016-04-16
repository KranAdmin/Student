package student.admin.service;

import java.util.List;
import student.admin.vo.StudentDataBean;
import student.admin.persistence.StudentCreateDao;
import student.admin.persistence.StudentCreateHibernateDao;

public class CreateServiceDao implements CreateService {

	private StudentCreateDao dao = new StudentCreateHibernateDao();

	public void addStudentList(StudentDataBean student) {
		System.out.println(student.getName());
		System.out.println("SuccessFully Entered into Service");
		dao.addStudentList(student);

	}

	@Override
	public List<StudentDataBean> getStudentsList() {
		return dao.getStudentsList();
	}

	public StudentDataBean getStudent(int id) {
		return dao.getStudent(id);
	}
	
	public void deleteStudent(int id){
		System.out.println("SuccessFully Entered into Service");
		dao.deleteStudent(id);
	}
}
