<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
<h1>Sign In</h1>
<form id="loginForm">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <button type="submit">Sign In</button>
</form>
<div id="loginMessage"></div>
<a href="signup">Sign Up</a>

<script>
    const loginForm = document.getElementById('loginForm');
    const loginMessage = document.getElementById('loginMessage');

    loginForm.addEventListener('submit', (event) => {
        event.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        // 从本地存储中获取注册时的用户名和密码
        const registeredUsername = localStorage.getItem('username');
        const registeredPassword = localStorage.getItem('password');

        // 验证用户名和密码
        if (username === registeredUsername && password === registeredPassword) {
            loginMessage.textContent = 'Login successful! Redirecting to homepage...';

            // 将登录状态存储到本地存储
            localStorage.setItem('isLoggedIn', 'true');

            // 延迟1秒后跳转到主页
            setTimeout(() => {
                window.location.href = '/haining_biomed_war';
            }, 1000);
        } else {
            loginMessage.textContent = 'Invalid username or password.';
        }
    });
</script>
</body>
</html>