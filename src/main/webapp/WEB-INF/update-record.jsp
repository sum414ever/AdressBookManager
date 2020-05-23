<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing Record</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<form action="/records/update" method="post">
    <table>

        <%
            String firstname = (String) request.getAttribute("firstname");
            String lastname = (String) request.getAttribute("lastname");
            String address = (String) request.getAttribute("address");
        %>
        <tr>
            <td>
                <label for="firstname">First name: </label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname" value="<%=firstname%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname" value="<%=lastname%>" disabled>
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
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
