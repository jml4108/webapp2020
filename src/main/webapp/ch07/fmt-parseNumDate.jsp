<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>parseNumDate</title>
</head>
<body>
<h2>&lt;fmt:parseDate&gt;</h2>
<c:set var="currentDate" value="2012 11 10 9 8 7" />
파싱 전 날짜 : ${currentDate }<br/>
<fmt:parseDate value="${currentDate}" var="parsedCurrentDate" pattern="yyyy MM dd hh mm ss" />
<p>파싱된 후 날짜 : <c:out value="${parsedCurrentDate}" /></p>
<p>포맷팅 후 날짜 : <fmt:formatDate value="${parsedCurrentDate}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss
초" /></p>
<h2>&lt;fmt:parseNumber&gt;</h2>
<c:set var="balance" value="1234.56" />
<fmt:parseNumber var="parsedNumber" type="number" value="${balance}" />
<p>은행 잔고 : <c:out value="${parsedNumber}" /></p>
<fmt:parseNumber var="parsedNumber" integerOnly="true" type="number" value="${balance}" />
<p>은행 잔고(원 단위 미만 절사): <c:out value="${parsedNumber}" /></p>
</body>
</html>
