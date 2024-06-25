<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>Outputting Variables</h2>
    <%-- Set a variable in a scriptlet --%>
    <%
        String name = "John Doe";
        request.setAttribute("name", name);
    %>
    <c:out value="${name}" />
</body>
</html>
