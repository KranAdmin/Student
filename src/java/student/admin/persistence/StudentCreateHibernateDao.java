package student.admin.persistence;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import student.actionDispatcherFilter.HibernateUtil;
import student.admin.vo.StudentDataBean;

public class StudentCreateHibernateDao implements StudentCreateDao {

	public void addStudentList(StudentDataBean student) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(student);
			tx.commit();
		} catch (RuntimeException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			session.close();
		}
	}

	public List<StudentDataBean> getStudentsList() {
		Session session = HibernateUtil.getSession();
		List<StudentDataBean> students = new ArrayList<StudentDataBean>();
		try {
			students = session.createQuery("from StudentDataBean").list();
			return students;
		} catch (RuntimeException e) {
			throw e;
		} finally {
			session.close();
		}
	}

	public StudentDataBean getStudent(int id) {
		Session session = HibernateUtil.getSession();
		StudentDataBean student = new StudentDataBean();
		try {
			student = (StudentDataBean) session.createQuery(
					"from StudentDataBean where id=" + id).uniqueResult();
			return student;
		} catch (RuntimeException e) {
			throw e;
		} finally {
			session.close();
		}
	}

	public void deleteStudent(int id) {
		Session session = HibernateUtil.getSession();
		try {
			System.out.println("SuccessFully Entered into Hibernate");
			Query query = session.createQuery("delete from StudentDataBean where id=" + id);
			query.executeUpdate();
		} catch (RuntimeException e) {
			throw e;
		} finally {
			session.close();
		}
	}

}
