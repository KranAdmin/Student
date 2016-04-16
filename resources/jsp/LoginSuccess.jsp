<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="student.admin.vo.StudentDataBean"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student DataBase</title>
<script type="text/javascript">
function validate()
{
	var studentName=document.getElementById("name").value;
	var studentAge=document.getElementById("age").value;
	if(studentName=="")
	{
		alert('Please Enter Student Name');
		return false;
	}
	else if(studentAge=="")
	{
		alert('Please Enter Student Age');
		return false;
	}
	else if(isNaN(studentAge))
	{
		alert('Enter Valid Age');
		studentAge="";
		studentAge.focus();
		return false;
	}
}
function updateConfirm()
{	
if(confirm('Are you sure want to update ?'))
	return true;
else
	return false;
}
function deleteConfirm()
{	
if(confirm('Are you sure want to delete ?'))
	return true;
else
	return false;
}
</script>
</head>
<body>
	<s:form name="create" action="create">
		<s:if test="update==true">
			<a href="studentList">Back To Home</a>
		</s:if>
		<s:else>
			<center>
				<a href="logout">Logout</a>
			</center>
			<u>Home</u>
		</s:else>
		<s:textfield type="hidden" name="student.id" />
		<s:textfield name="student.name" id="name" label="Student Name" />
		<s:if test="update==true">
			<s:textfield name="student.age" id="age" label="Student Age" />
		</s:if>
		<s:elseif test="update==false">
			<s:textfield name="student.age" id="age" label="Student Age" value="" />
		</s:elseif>
		<s:textfield name="student.department" label="Student Department" />
		<s:if test="update==false">
			<s:submit onclick="return validate()" value="Create" />
		</s:if>
		<s:elseif test="update==true">
			<s:submit onclick="return updateConfirm()" value="Update" />
		</s:elseif>
	</s:form>
	<b><u>StudentList:</u></b>
	<table>
		<tr>
			<td><b>Name</b></td>
			<td><b>Age</b></td>
			<td><b>Department</b></td>
		</tr>
		<s:if test="students.size()>0">
			<s:iterator value="students">
				<tr>
					<td><a href="getStudent?id=<s:property value="id"/>"
						title="Edit StudentId:<s:property value="id" />"><s:property
								value="name" /></a></td>
					<td><s:property value="age" /></td>
					<td><s:property value="department" /></td>
					<td><a onclick="return deleteConfirm()" href="deleteStudent?id=<s:property value="id"/>"
						title="<s:property value="name" />"><i>Delete</i></a></td>
				</tr>
			</s:iterator>
		</s:if>
	</table>
	<s:if test="students.size()==0">
		<i>--- No Data ---</i>
	</s:if>
</body>
</html>