<%--
  Created by IntelliJ IDEA.
  User: wjdals4108@icloud.com
  Date: 2020-11-19
  Time: 오후 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="viewFileRequest.do" enctype="multipart/form-data" method="post">
        <input type="text" name="inputValue"><br/>
        <input type="file" name="selectFile"><br/>
        <input type="file" name="nonSelectFile"><br/>
        <input type="submit" value="Upload File"><br/>
    </form>
</body>
</html>
