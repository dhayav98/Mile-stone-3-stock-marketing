<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="bodystyle">

    <header class="header">
        <ul class="header-list">
            <li><img class="header-logo" src="images/stock-logo.png"></li>
            <li><span class="header-title">STOCK MARKET</span></li>
            <li id="logout-link"><a class="logout-link" href="#">Logout</a></li>

        </ul>
    </header>
    <div class="user-main">
        <form:form method="post" action="user_login1" class="login_form" modelAttribute="user">

            <h2 class="login-header"> Login</h2>

            <span class="entypo-key inputUserIcon">
                <i class="glyphicon glyphicon-user"></i>
            </span>
            <form:input type="text" class="user_form" path="userName" placeholder="username" />

            <span class="entypo-key inputPassIcon">
                <i class="glyphicon glyphicon-lock"></i>
            </span>
            <form:input type="password" class="user_form" path="userPassword" placeholder="password" />
            <button class="submit"><span class="entypo-lock">SIGN IN</button>
              <br>
        <span class="user_reg"><a href="user_registration.html">New User ? Register here..</a></span>
        </form:form>

    </div>
    <footer class="footer">
        <p style="line-height: 60px;padding: 1px 16px;">&copy; 2019 StockManagement.com</p>
    </footer>
</body>

</html>