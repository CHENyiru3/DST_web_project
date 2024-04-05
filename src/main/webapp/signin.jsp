<%--
  Created by IntelliJ IDEA.
  User: chen_yiru
  Date: 05/04/2024
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
<h1>Sign In</h1>
<form onsubmit="return validateLogin()">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <button type="submit">Sign In</button>
</form>
<div id="loginMessage"></div>
<a href="signup.jsp">Sign Up</a>

<script>
    function validateLogin() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const loginMessage = document.getElementById('loginMessage');

        // 从本地存储中获取注册时的用户名和密码
        const registeredUsername = localStorage.getItem('username');
        const registeredPassword = localStorage.getItem('password');

        // 验证用户名和密码
        if (username === registeredUsername && password === registeredPassword) {
            loginMessage.textContent = 'Login successful!';
            return false; // 阻止表单提交
        } else {
            loginMessage.textContent = 'Invalid username or password.';
            return false; // 阻止表单提交
        }
    }
</script>
</body>
</html>
