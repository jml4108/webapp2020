<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>sql-JSTL</title>
</head>
<body>
<sql:setDataSource var="dataSource"
                   url="jdbc:oracle:thin:@localhost:1521:xe"
                   driver="oracle.jdbc.OracleDriver" user="system" password="cometrue" />
<!-- dataSource로 질의한 결과를 resultSet 객체에 저장 -->
<sql:query var="resultSet" dataSource="${dataSource}" maxRows="10">
    select * from tab;
</sql:query>
<table border="1">
    <tr>
        <c:forEach var="columnName" items="${resultSet.columnNames}">
            <th width="100"><c:out value="${columnName}" /></th>
            ch07/sql-JSTL.jsp
            72
        </c:forEach>
    </tr>
    <c:forEach var="row" items="${resultSet.rowsByIndex}">
        <tr>
            <c:forEach var="column" items="${row}" varStatus="i">
                <td>
                    <c:if test="${column != null}">
                        <c:out value="${column}" />
                    </c:if>
                    <c:if test="${column == null}">
                        &nbsp;
                    </c:if>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>