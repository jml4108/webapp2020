<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>fn:split과 fn:join</h2>
<c:set var="week" value="Sun,Mon,Tue,Wen,Thu,Fri,Sat" />
<c:set var="splitWeek" value="${fn:split(week,',')}" />
<c:set var="joinedWeek" value="${fn:join(splitWeek, ' ')}" />
<p>
    ${week} 을 콤마(,)로 split 한 경우 : <br/>
    <c:forEach var="day" items="${splitWeek }">
        ${day }<br/>
    </c:forEach>
</p>
<p>${week}를 split한 배열을 공백으로 join : ${joinedWeek}</p>
</body>
</html>
