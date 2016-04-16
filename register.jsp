<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="student.admin.service.LoginService"%>
<%@page import="student.admin.service.LoginDaoService"%>
<%@page import="java.util.ArrayList"%><html>
<link rel="shortcut icon" href="resources/images/ico.png" />
<head>
<title>Registration Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
	<s:form name="Register" action="register">
		<s:textfield name="username" label="Username" key="username" />
		<s:password name="password" label="Password" key="password" />
		<s:submit value="Register" />
	</s:form>

</body>
</html>