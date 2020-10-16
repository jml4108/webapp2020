<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@office.induk.ac.kr
  Date: 2020-10-16
  Time: 오전 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>JSP Request Tester</title>
</head>
<body>
getServerName : <%= request.getServerName()%> <br/>
getServerPort : <%= request.getServerPort()%> <br/>
getRequestURI : <%= request.getRequestURI()%> <br/>
getQueryString : <%= request.getQueryString()%> <br/>
getRemoteAddress : <%= request.getRemoteAddr()%> <br/>

<%
    //System.out : Java 기본객체. - 콘솔을 통한 표준 출력 객체
    //out : JSP 기본 객체. - 웹 페이지 형태의 출력 객체
    out.print("<h1> Email: " + request.getParameter("email") + "</h1>");   //input type text의 name의 속성 값.
%>
<h1>Email : <%= request.getParameter("email")%> </h1>
<%= "Password : " + request.getParameter("passwd") %>

</body>
</html>
