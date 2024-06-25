<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<%
    java.util.List<String> names = java.util.Arrays.asList("sriram", "sri", "ram");
    request.setAttribute("names", names);
%>
<c:set var="names1" value="${['gayathri', 'nalla', 'drum']}" />

<ul>
    <c:forEach var="name" items="${names}">
        <li><c:out value="${name}" /></li>
    </c:forEach>
</ul>

<ul>
    <c:forEach var="name" items="${names1}">
        <li><c:out value="${name}" /></li>
    </c:forEach>
</ul>

</body>
</html>
