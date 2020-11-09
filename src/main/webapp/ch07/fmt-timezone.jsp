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
    <title>fmt-timezone</title>
</head>
<body>
<h2>&lt;fmt:timeZone&gt;</h2>
<c:set var="today" value="<%=new java.util.Date()%>" />
<c:set var="timeZone" value="America/Los_Angeles" />
현재 시간대에서의 날짜와 시간 :
<strong><fmt:formatDate value="${today}" type="both" timeStyle="full"/></strong><br/>
${timeZone } 시간대에서의 날짜와 시간 :
<fmt:timeZone value="${timeZone}">
    <strong>
        <fmt:formatDate value="${today}" type="both" timeStyle="full"/>
    </strong>
</fmt:timeZone>
<br/>
<h2>전체 시간대 리스트</h2>
<%
    String[] timeZoneList = java.util.TimeZone.getAvailableIDs();
    for(String timeZone : timeZoneList)
        out.println(timeZone + "<br/>");
%>
</body>
</html>
