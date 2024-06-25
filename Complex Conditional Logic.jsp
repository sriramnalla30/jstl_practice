<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
    <h2>Complex Conditional Logic</h2>
    <%-- Set a role attribute in a scriptlet --%>
    <%
        String role = "admin"; 
        request.setAttribute("role", role);
    %>
    <c:choose>
        <c:when test="${role == 'admin'}">
            <p>You have administrative privileges.</p>
        </c:when>
        <c:when test="${role == 'user'}">
            <p>You are a regular user.</p>
        </c:when>
        <c:otherwise>
            <p>Your role is unknown.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>

<%-- here we can get the role from the user form a form in index.html and should change jsp line to     String role = request.getParameter("role");

index.html
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="jstl.jsp">
Role:<input type="text" name="role">
<input type="submit" value="Submit">
</form>
</body>
</html>

--%>
