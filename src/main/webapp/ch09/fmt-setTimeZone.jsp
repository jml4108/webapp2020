<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="current" value="<%=new java.util.Date()%>" />
<c:set var="timeZone" value="Europe/London" />
<h2>&lt;fmt:setTimeZone&gt;</h2>
<p>Date in the current time zone:
    <strong>
        <fmt:formatDate value="${current}" type="both" timeStyle="full" dateStyle="full" />
    </strong>
</p>
<fmt:setTimeZone value="${timeZone }" />
<p>Date in the ${timeZone } time zone:
    <strong>
        <fmt:formatDate value="${current}" type="both" timeStyle="full" dateStyle="full" />
    </strong>
</p>
</body>
</html>
