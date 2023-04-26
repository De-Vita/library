<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>detail.jsp</h2>
<table style="text-align: center">
  <tr>
    <th>id</th>
    <th>name</th>
    <th>publisher</th>
    <th>author</th>
    <th>price</th>
  </tr>
  <tr>
    <td>${book.id}</td>
    <td>${book.bookName}</td>
    <td>${book.bookPublisher}</td>
    <td>${book.bookAuthor}</td>
    <td>${book.bookPrice}</td>
  </tr>
</table>

</body>
</html>
