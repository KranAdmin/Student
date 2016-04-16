<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<link rel="shortcut icon" href="resources/images/ico.png" />
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=" " >
	<s:if test="logout==true"><center> Logout Successfully... </center></s:if>
	<s:form name="login" action="login">
		<s:textfield name="username" label="Username" key="username" />
		<s:password name="password" label="Password" key="password" />
		<s:submit value="login" />
		
	</s:form>
</body>
</html>