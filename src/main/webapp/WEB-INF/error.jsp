<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error page</title>
</head>
<body>
<%
    String firstname = (String) request.getAttribute("firstname");
    String lastname = (String) request.getAttribute("lastname");
%>
<p>Page with name '<%=firstname%> <%=lastname%>' not found in Address Book</p>
</body>
</html>
