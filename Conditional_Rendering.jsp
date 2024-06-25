<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>Conditional Rendering</h2>
    <%-- Set a boolean attribute in a scriptlet --%>
    <%
        boolean isLoggedIn = true;
        request.setAttribute("isLoggedIn", isLoggedIn);
    %>
    <c:if test="${isLoggedIn}">
        <p>Welcome back, user!</p>
    </c:if>
</body>
</html>
