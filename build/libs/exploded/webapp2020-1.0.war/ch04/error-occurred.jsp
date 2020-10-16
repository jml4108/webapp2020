<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@office.induk.ac.kr
  Date: 2020-10-12
  Time: 오후 7:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page errorPage="error-handling.jsp" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int dividened = 1000;
    int divisor = Integer.parseInt(request.getParameter("divisor"));
    int result  = 0;
    result = dividened / divisor;
    out.println(dividened + "/" + divisor + " = " + result);
    out.println(request.getQueryString());
%>
</body>
</html>
