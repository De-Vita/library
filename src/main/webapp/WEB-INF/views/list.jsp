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
    <table>
        <tr>
            <th>id</th>
            <th>name</th>
<%--            <th>publisher</th>--%>
<%--            <th>author</th>--%>
<%--            <th>price</th>--%>
            <th>조회</th>
        </tr>
        <c:forEach items="${bookList}" var="b">
            <tr>
                <td>${b.id}</td>
                <td>${b.bookName}</td>
                <td>${b.bookPublisher}</td>
<%--                <td>${b.bookAuthor}</td>--%>
<%--                <td>${b.bookPrice}</td>--%>
                <td>
                    <%-- 상세조회를 위한 요청 주소: detail
                         같이 보내줘야 하는 값: id
                         detail 요청을 처리하는 컨트롤러 메서드를 만들고
                         조회결과를 detail.jsp에 출력하자.
                         BookRepository에서는 sql.selectOne() 을 사용하고
                         mapper에서는 parameterType = "Long"으로 주고
                         resultType="book"으로 하면 됩니다.
                          --%>
                    <a href="/detail?id=${b.id}">조회</a>
                </td>
                <td>
                    <a href="/delete?id=${b.id}">삭제</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
