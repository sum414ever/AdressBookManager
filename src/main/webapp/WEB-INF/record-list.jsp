<%@ page import="com.softserve.itacademy.AddressBook" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
Sort by: <a href="/records/list?sort=asc">ascending</a> |
<a href="/records/list?sort=desc">descending</a>
<br><br>
<table border="1">
    <tr>
        <th>No</th>
        <th>Fist name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3">Operation</th>
    </tr>

    <%
        for (Object record: (AddressBook) request.getAttribute("records")) {
          String[] split = record.toString().split(" ", 4);
    %>
    <tr>
        <td><%=split[0]%></td>
        <td><%=split[1]%></td>
        <td><%=split[2]%></td>
        <td><%=split[3]%></td>

        <td>
            <a href=" /records/read?firstname=<%=split[1]%>&lastname=<%=split[2]%>">Read</a>
        </td>
        <td>
            <a href="/records/update?firstname=<%=split[1]%>&lastname=<%=split[2]%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?firstname=<%=split[1]%>&lastname=<%=split[2]%>">Delete</a>
        </td>

    </tr>

    <%
     }
    %>
</table>
</body>
</html>
