<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
    <link rel="stylesheet" href="style/w3.css">
</head>
<body>
    <div class="w3-container w3-indigo">
        <%
            if (request.getAttribute("name") != null) {
                out.println("<p> User " + request.getAttribute("name") + " was added</p>");
            }
        %>
    </div>
    <div class="w3-container w3-indigo w3-padding">
        <h2>Add new user</h2>
        <form method="post" class="w3-container w3-left-align w3-padding">
            <input class="w3-input w3-border" type="text" name="name" placeholder="Your name"><br />
            <input class="w3-input w3-border" type="text" name="lastname" placeholder="Your lastname"><br />
            <input class="w3-input w3-border" type="text" name="age" placeholder="Your age"><br />
            <button class="w3-btn w3-khaki w3-padding-16" type="submit">Add</button>
        </form>
    </div>

    <div class="w3-container w3-right-align w3-padding w3-khaki">
        <button class="w3-btn w3-indigo w3-padding-16" onclick="location.href='/'">Return to main page</button>
    </div>
</body>
</html>
