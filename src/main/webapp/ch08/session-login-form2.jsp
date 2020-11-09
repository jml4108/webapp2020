<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@office.induk.ac.kr
  Date: 2020-10-12
  Time: 오후 6:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="./css/style.css" rel="stylesheet" type="text/css">
    <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="./js/jquery.slim.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row no-gutter">
        <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
        <div class="col-md-8 col-lg-6">
            <div class="login d-flex align-items-center py-5">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-lg-8 mx-auto">
                            <h3 class="login-heading mb-4">환영합니다</h3>

<c:choose>
<c:when test="${sessionScope.login == null}">
                            <form action="./sessionLogin2.do" method="post">
                                <c:choose>
                                <c:when test="${cookie == null}">
                                <div class="form-label-group">
                                    <input type="email" name="id" value="" class="form-control" placeholder="Email address" required autofocus>
                                    <label for="id">Email address</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" name="pw" value="" class="form-control" placeholder="Password" required>
                                    <label for="pw">Password</label>
                                </div>

                                <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" name="checked" class="custom-control-input" id="checked">
                                    <label class="custom-control-label" for="checked">Remember password</label>
                                </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="form-label-group">
                                        <input type="email" name="id" id="id" value=${cookie_id} class="form-control" placeholder="Email address" required autofocus>
                                        <label for="id">Email address</label>
                                    </div>

                                    <div class="form-label-group">
                                        <input type="password" name="pw" id="pw" value=${cookie_pw} class="form-control" placeholder="Password" required>
                                        <label for="pw">Password</label>
                                    </div>

                                    <div class="custom-control custom-checkbox mb-3">
                                        <input type="checkbox" name="checked" class="custom-control-input">
                                        <label class="custom-control-label" for="checked">Remember password</label>
                                    </div>
                                </c:otherwise>
                                </c:choose>
                                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
                                <div class="text-center">
                                    <a class="small" href="#">Forgot password?</a></div>
                            </form>
</c:when>
    <c:otherwise>
        <jsp:forward page="./session-logined-page2.jsp"/>
    </c:otherwise>
</c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
