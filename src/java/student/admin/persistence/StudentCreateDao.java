package student.admin.persistence;

import java.util.List;
import student.admin.vo.StudentDataBean;

public interface StudentCreateDao {

	public void addStudentList(StudentDataBean student);

	public List<StudentDataBean> getStudentsList();
	
	public StudentDataBean getStudent(int id);
	
	public void deleteStudent(int id);
}
