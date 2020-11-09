<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@office.induk.ac.kr
  Date: 2020-10-12
  Time: 오후 6:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
                            <h3 class="login-heading mb-4">로그인에 성공한 사용자입니다.</h3>
                            <form action="./session-logout2.do" method="post">
                                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Log out</button>
                                <div class="text-center">
                                    <a class="small" href="#">Forgot password?</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
