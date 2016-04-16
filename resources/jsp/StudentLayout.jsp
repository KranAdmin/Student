<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style type="text/css">
html, body {
	height: 100%;
	margin: 0px auto;
}

.container {
	height: 70%;
}
</style>
</head>
<body>
	<div
		style="height: 15px; border: dotted thin; background: gray; text-align: center; padding: 20px;">
		<tiles:insertAttribute name="header" />
	</div>
	<div class="container" style="border: dotted thin; padding: 50px;">
		<tiles:insertAttribute name="body" />
	</div>
	<div
		style="height: 15px; border: dotted thin; background: gray; text-align: center; padding: 20px;">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>