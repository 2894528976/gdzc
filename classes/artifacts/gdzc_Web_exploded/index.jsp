<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<title>中转页...请稍等</title>
</head>
<body onLoad="intro()">
<script language="javascript">
function intro(){
    // request.getSession().getAttribute("username")!=null
    <%--var myName="<%=session.getAttribute("MYNAME")%>";--%>
    alert("aaa")
    console.log("来到页面")
	window.location.href="login/login.jsp";
}
</script>
</body>
</html>

