<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
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
        input[type="password"],
        input[type="email"] {
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

        #signupMessage {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Sign Up</h1>
    <form id="signupForm">
        <input type="text" id="username" name="username" placeholder="Username" required>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <input type="email" id="email" name="email" placeholder="Email" required>
        <button type="submit">Sign Up</button>
    </form>
    <div id="signupMessage"></div>
</div>
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

        signupMessage.textContent = 'Registration successful! Redirecting to login page...';

        // 延迟1秒后跳转到登录页面
        setTimeout(() => {
            window.location.href = '/haining_biomed_war/signin';
        }, 1000);
    });
</script>
</body>
</html>