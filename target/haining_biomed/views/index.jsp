<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Dashboard Template · Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/static/css/app.css" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Precision Medicine Matching System</a>
    <ul class="navbar-nav px-3" id="userNav">
        <li class="nav-item">
            <a class="nav-link" href="signin">Sign In</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="signup">Sign Up</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <jsp:include page="false_nav.jsp">
            <jsp:param name="active" value="dashboard"/>
        </jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h2>Dashboard</h2>
            </div>
            <div class="table-responsive">
                Welcome to use Precision Medicine Matching System
            </div>
        </main>
    </div>
</div>

<script>
    window.onload = function () {
        const isLoggedIn = localStorage.getItem('isLoggedIn');
        const username = localStorage.getItem('username');

        if (!isLoggedIn || !username) {
            // 未登录或用户名不存在,重定向到登录页面
            window.location.href = 'signin';
        }
    }

    const userNav = document.getElementById('userNav');

    if (isLoggedIn) { // 直接使用 isLoggedIn 的布尔值
        userNav.innerHTML = `
        <li class="nav-item">
            <span class="nav-link">Welcome, ${username}!</span>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" id="logoutLink">Logout</a>
        </li>
    `;

        const logoutLink = document.getElementById('logoutLink');
        logoutLink.addEventListener('click', (event) => {
            event.preventDefault();
            localStorage.removeItem('isLoggedIn');
            localStorage.removeItem('username');
            window.location.href = '/haining_biomed_war/';
        });
    }
</script>
</body>
</html>