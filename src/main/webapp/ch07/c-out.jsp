<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c-out</title>
</head>
<body>
<c:set var="dct" value="<h2>Dream comes true</h2>" />
escapeXML=true : <br/> <c:out value="${dct}" /><br>
escapeXML=false :<br/> <c:out value="${dct}" escapeXml="false" />
</body>
</html>
