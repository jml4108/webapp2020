<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>cookie-list</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    out.println("현재 설정된 쿠키의 개수 : " + cookies.length + "</br>");
    for(int i = 0; i < cookies.length; i++) {
        out.println(cookies[i].getName() + ":" + cookies[i].getValue() + "<br/>");
    }
%>
<a href="cookie-form.jsp"> 로그인 폼으로 </a><br/>
</body>
</html>
