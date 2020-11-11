<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-10-16
  Time: 오전 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="../main/index.jsp">
<c:choose>
    <c:when test="${sessionScope.login == null}">
        Start Bootstrap
    </c:when>
    <c:otherwise>
        ${sessionScope.login.id}
    </c:otherwise>
</c:choose>
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../main/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../main/about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../main/post.jsp">Sample Post</a>
                </li>
<c:choose>
    <c:when test="${sessionScope.login == null}">
        <li class="nav-item">
            <a class="nav-link" href="../ljm-shop/member-login.jsp">Sign In</a>
        </li>
    </c:when>
    <c:otherwise>
        <li class="nav-item">
            <a class="nav-link" href="../ljm-shop/signout.do">Sign Out</a>
        </li>
    </c:otherwise>
</c:choose>
            </ul>
        </div>
    </div>
</nav>
