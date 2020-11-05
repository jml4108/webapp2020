<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Vector" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>forEach</title>
</head>
<%
    int sum = 0;
    for(int i = 1; i <= 100; i++)
        sum = sum + i;
    out.println("<h1> scripting : " + sum + "</h1>");
%>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100">
    <c:set var="sum" value="${sum+i}"/>
</c:forEach>
<H1>합은: ${sum}</H1>

<h3>Iterating over a range</h3>
<c:forEach var="item" begin="1" end="10">
    ${item}
</c:forEach>
<%
    Vector v = new Vector();
    v.add("One"); v.add("Two"); v.add("Three"); v.add("Four");
    pageContext.setAttribute("vector", v);
%>
<h3>Iterating over a Vector</h3>
<c:forEach items="${vector}" var="item" >
    ${item}
</c:forEach>
</body>
</html>
