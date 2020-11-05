<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Tag Plugin Examples: if</title>
</head>
<body>
<h1>Tag Plugin Examples - &lt;c:if></h1>
<hr/>
<br/>
<a href="#">Plugin Introductory Notes</a>
<br/>
<a href="#">Brief Instructions for Writing Plugins</a>
<br/> <br/>
<hr/>
<br/>
계속
21
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h3>Set the test result to a variable</h3>
<c:if test="${1==1}" var="theTruth" scope="page"/>
The result of testing for (1==1) is: ${theTruth}
<h3>Conditionally execute the body</h3>
<c:if test="${2>0}">
    <p>It's true that (2>0)! Working.</p>
</c:if>
<c:if test="${0>2}">
    <p>It's not true that (0>2)! Failed.</p>
</c:if>
</body>
</html>
