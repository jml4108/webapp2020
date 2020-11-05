<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Tag Examples - choose</title>
</head>
<body>
<h1>Tag Plugin Examples - &lt;c:choos&gt;</h1>
<hr/>
<br/>
<a href="#">Plugin Introductory Notes</a>
<br/>
<a href="#">Brief Instructions for Writing Plugins</a>
<br/> <br/>
<hr/>
<br/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
계속
23 </br>
<c:forEach var="index" begin="0" end="4">
    # ${index}: <c:choose> <c:when test="${index == 1}">
    One!<br/>
</c:when
>
    <c:when test="${index == 4}">
        Four!<br/>
    </c:when
    >
    <c:when test="${index == 3}">
        Three!<br/>
    </c:when
    >
    <c:otherwise
    >
        Huh?<br/>
    </c:otherwise
    >
</c:choose
>
</c:forEach
>
</body>
</html>