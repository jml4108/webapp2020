<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>c-url</title>
</head>
<body>
<c:url value="https://stackoverflow.com/search" var="searchUrl">
    <c:param name="q" value="c url" />
    <c:param name="s" value="8d40f6d9-92ba-4b96-ad06-d11f080022bc" />
</c:url>
<c:out value="${searchUrl }" /><br/>
</body>
</html>
