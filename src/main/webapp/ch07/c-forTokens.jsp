<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-05
  Time: 오전 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>forTokens</title>
</head>
<body>
구분자로 구분하기 전 토큰의 집합 :
<c:set var="fileExtensions" value="java,jsp,class,zip,hwp,doc" />
${fileExtensions }<br/>
쉼표(,)를 구분자로 구분한 상태 : <br/>
<c:forTokens items="${fileExtensions }" delims="," var="extension" varStatus="status">
    ${status.count} - ${extension }<br/>
</c:forTokens>
</body>
</body>
</html>
