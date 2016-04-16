<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page isErrorPage="true" %>  

<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Problem in loading..</title>
<script src="/purple/resources/js/colorbox/jquery.min.js"></script>
<script src="/purple/resources/js/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
<SCRIPT type="text/javascript">
function showConsole()
{
    var key=prompt("Enter access key");
    if(key=='admin')
    {
        $('.errormsg').show(1400);
        $('a').removeAttr('onclick');
        return true;
    }
    else if(key!=null && key!='admin')
    {
        alert("Invalid Key!.");
        return false;
    }
    else
    {
        return false;
    }
}


</SCRIPT>
</head>
<body bgcolor="#FBFBFB" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<div style="padding: 50px">
<div align="center"><br></br><font size=6.5 style="font-weight: bold;" color="brown" >Student DataBase</font></div>
<div align="center" style="padding-top: 20px;"><img alt="error!!!" src="resources/images/err.png" width="80px"> </div><br>

<h3 style="font-weight: 600">An unexpected problem has occurred</h3>
<p>Please report this problem to your system administrator or
appropriate technical support personnel. Thank you for your cooperation.
</p>
<hr />
<a href="javascript:;" style="outline: none;" onclick="return showConsole();" title="see what happened">Find what happened?.</a>
<a href="/studentLogin/" style="outline: none;padding-left: 50px" title="Login again">Login again</a> 
 
<div class="errormsg" style="display: none">
<pre><%
if(null == exception){
    exception = (Throwable)request.getAttribute("org.apache.struts.action.EXCEPTION");
    %>No Struts trace<%
}else{
    java.io.StringWriter sw = new java.io.StringWriter();
    java.io.PrintWriter pw = new java.io.PrintWriter(sw);
    exception.printStackTrace(pw);
    out.write(sw.getBuffer().toString());

}
%>
</pre>
</div>
<hr/>


</div>
</body>
</html>
