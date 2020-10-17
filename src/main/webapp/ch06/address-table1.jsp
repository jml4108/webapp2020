<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-17
  Time: 오후 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="jspservlet.ch06.domain.*" %>
<html>
<head>
    <title>Address Table</title>
</head>
<body>
<h1>Found Name!</h1>
<%--
    Member member = (Member) request.getAttribute("member");
    out.println("Name : " + member.getEmail());
--%>
<br/>
Phone : ${member.name} <br/>                <!-- 위의 코드가 없어도 된다. -->
Pw : ${requestScope.member.pw} <br/>
Email : ${requestScope.member.email} <br/>
</body>
</html>
