<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>fmt-locale </title>
</head>
<body>
<c:set var="now" value="<%= new java.util.Date() %>" />

<h1>대한민국</h1>
<fmt:setLocale value="ko_kr"/>
금액: <fmt:formatNumber value="1000000" type="currency"/><br>
일시: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<hr>

<h1>미국</h1>
<fmt:setLocale value="en-us"/>
금액: <fmt:formatNumber value="1000000" type="currency"/><br>
일시: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<hr>

<h1>일본</h1>
<fmt:setLocale value="ja-jp"/>
금액: <fmt:formatNumber value="1000000" type="currency"/><br>
일시: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<hr>
</body>
</html>
