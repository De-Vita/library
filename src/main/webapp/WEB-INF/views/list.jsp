<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오후 2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>list.jsp</h2>
<table style="text-align: center">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>조회</th>
        <th>조회(js)</th>
        <th>수정</th>
    </tr>
    <c:forEach items="${bookList}" var="b">
        <tr>
            <td>${b.id}</td>
            <td>
                <a href="/detail?id=${b.id}">${b.bookName}</a>
            </td>
            <td>
                <a href="/detail?id=${b.id}">조회</a>
            </td>
            <td>
                <button onclick="detail_book('${b.id}')">조회</button>
            </td>
            <td>
                <button onclick="update_book('${b.id}')">수정</button>
            </td>
            <td>
                <button onclick="delete_book('${b.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
<script>
    const detail_book = (id) => {
        location.href = "/detail?id="+id;
    }
    const update_book = (id) => {
        location.href = "/update?id="+id;
    }
    const delete_book = (id) => {
        location.href = "/delete?id="+id;
    }
</script>
</html>