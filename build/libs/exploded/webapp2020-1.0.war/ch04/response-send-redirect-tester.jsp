<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-16
  Time: 오전 1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>response-send-redirect-tester</title>
</head>
<body>
<%
    String name = "induksoft";
    response.sendRedirect("jsp-request-tester.jsp?name=" + name);
%>
</body>
</html>
