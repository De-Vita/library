<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오후 7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const deleteOK = ${delete};
        if (deleteOK > 0) {
            alert("삭제 성공");
            location.href = "/list";
        } else {
            alert("삭제 실패");
            location.href = "/list";
        }
    </script>
</head>
<body>

</body>
</html>
