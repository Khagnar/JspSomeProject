<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of users</title>
    <link rel="stylesheet" href="style/w3.css">
</head>
<body>
    <div class="w3-container w3-padding w3-indigo">
        <h2>Users</h2>
    </div>
    <div class="w3-container w3-khaki w3-padding w3-left-align">
        <%
            List<User> users = (List<User>) request.getAttribute("Users");
            if (users != null && !users.isEmpty()) {
                out.println("<ui>");
                for (User user : users) {
                    out.println("<li>" + user.getName() + " " + user.getLastname() + "</li>");
                }
                out.println("</ui>");
            }
            else out.println("There aren't users in the list");
        %>
    </div>
    <div class="w3-container w3-khaki w3-right-align">
        <button class="w3-btn w3-indigo w3-padding-16 " onclick="location.href='/'">Return to main page</button>
    </div>
</body>
</html>
