<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show info about Record</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
    <%
    String firstname = (String) request.getAttribute("firstname");
    String lastname = (String) request.getAttribute("lastname");
    String address = (String) request.getAttribute("address");
    %>

    <p>First name: <%=firstname%></p>
    <p>Last name: <%=lastname%></p>
    <p>Address: <%=address%></p>
</body>
</html>
