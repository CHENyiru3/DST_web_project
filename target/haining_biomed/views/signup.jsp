<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<h1>Sign Up</h1>
<form id="signupForm">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <br>
    <button type="submit">Sign Up</button>
</form>
<div id="signupMessage"></div>
<a href="signin.jsp">Sign In</a>

<script>
    const signupForm = document.getElementById('signupForm');
    const signupMessage = document.getElementById('signupMessage');

    signupForm.addEventListener('submit', (event) => {
        event.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const email = document.getElementById('email').value;

        // 将用户信息存储到本地存储
        localStorage.setItem('username', username);
        localStorage.setItem('password', password);

        signupMessage.textContent = `Registration successful! Username: ${username}, Password: ${password}, Email: ${email}`;
        signupForm.reset();
    });
</script>
</body>
</html>