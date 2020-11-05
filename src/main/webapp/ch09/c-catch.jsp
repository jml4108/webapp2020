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
    <title>c-catch</title>
</head>
<body>
<%
    String str1 = request.getParameter("n1");
    String str2 = request.getParameter("n2");
    int num1 = Integer.parseInt(str1);
    int num2 = Integer.parseInt(str2);
%>
<c:catch var="exceptionName">
    예외가 발생할 수 있는 코드
</c:catch>
<c:if test="${exceptionName != null}">
    에러메세지 :${exceptionName.message}
</c:if>
</body>
</html>
