<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>fmt-formatDate</title>
</head>
<body>
<c:set var="current" value="<%= new java.util.Date() %>" />
dateStyle short : <fmt:formatDate value="${current }" type="date" dateStyle="short"/><br/>
dateStyle medium : <fmt:formatDate value="${current }" type="date" dateStyle="medium"/><br/>
dateStyle default : <fmt:formatDate value="${current }" type="date" /><br/>
dateStyle long : <fmt:formatDate value="${current }" type="date" dateStyle="long"/><br/>
dateStyle full : <fmt:formatDate value="${current }" type="date" dateStyle="full"/><br/>
timeStyle short : <fmt:formatDate value="${current }" type="time" timeStyle="short"/><br/>
timeStyle medium : <fmt:formatDate value="${current }" type="time" timeStyle="medium"/><br/>
timeStyle default : <fmt:formatDate value="${current }" type="time" /><br/>
timeStyle long : <fmt:formatDate value="${current }" type="time" timeStyle="long"/><br/>
timeStyle full : <fmt:formatDate value="${current }" type="time" timeStyle="full"/><br/>
type both : <fmt:formatDate value="${current }" type="both" dateStyle="long" timeStyle="full"/><br/>
pattern : <fmt:formatDate value="${current }" pattern="yyyy년 MM월 dd일, hh시:mm분:ss초 a z"/><br/>
</body>
</html>
