<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Record</title>
</head>
<body>
<%@include file="header.html" %>
<br><br>

<% if (request.getAttribute("error") != null) {%>
<p><%=request.getAttribute("error")%>
</p>
<%
    }
    String firstnameDAO = (String) request.getAttribute("firstname");
    String lastnameDAO = (String) request.getAttribute("lastname");
    String addressDAO = (String) request.getAttribute("address");

    String firstname = firstnameDAO == null ? "" : firstnameDAO;
    String lastname = lastnameDAO == null ? "" : lastnameDAO;
    String address = addressDAO == null ? "" : addressDAO;
%>
<form action="/records/create" method="post">

    <table>
        <tr>
            <td>
                <label for="firstname">First name: </label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname" value="<%=firstname%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname" value="<%=lastname%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address" value="<%=address%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
