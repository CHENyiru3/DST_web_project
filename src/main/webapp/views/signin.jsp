<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        #loginMessage {
            color: red;
            margin-top: 10px;
        }

        a {
            color: #333;
            text-decoration: none;
            margin-top: 10px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Sign In</h1>
    <form id="loginForm">
        <input type="text" id="username" name="username" placeholder="Username" required>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <button type="submit">Sign In</button>
    </form>
    <div id="loginMessage"></div>
    <a href="signup">Sign Up</a>
</div>
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
            localStorage.setItem('isLoggedIn', true); // 将 isLoggedIn 存储为布尔值
            localStorage.setItem('username', username);
            // 延迟1秒后跳转到主页
            setTimeout(() => {
                window.location.href = '/haining_biomed_war/homepage';
            }, 1000);
        } else {
            loginMessage.textContent = 'Invalid username or password.';
        }
    });
</script>
</body>
</html>