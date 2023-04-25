<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오전 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>index.jsp</h2>
    <a href="/save">save.jsp</a>
    <button onclick="fun1()">list.jsp</button>
</body>
<script>
    const fun1 = () => {
      location.href = "/list"
    }
</script>
</html>
