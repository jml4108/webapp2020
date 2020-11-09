<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-06
  Time: 오전 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<body> <c:choose>
    <c:when test="${sessionScope.login == null}">
        <form action="./sessionLogin.do" method="post">
            ID : <input type="text" name="id"><br>
            PW : <input type="password" name="pw"><br>
            <input type="submit" value="로그인">
        </form>
    </c:when>
    <c:otherwise>
        <jsp:forward page="./session-logined-page.jsp"/>
    </c:otherwise>
</c:choose>
</body>
</html>
