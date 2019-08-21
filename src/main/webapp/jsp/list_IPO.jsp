<!DOCTYPE html>
<html lang="en">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>user_landing_page</title>
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
    <div class="main">
        <ul class="nav-bar">
            <li> <a href="list_IPO.html">IPOs</a></li>
            <li><a href="comparison_chart.html">Compare Company</a></li>
            <li><a href="#">Compare Sector</a></li>
            <li><a href="#">Other</a></li>

        </ul>

        <h1 style="text-align: center;line-height: 200px">LIST OF ALL STOCKS</h1>
        <div class="file-upload">
            <form id="form-summary" action="">
                <table id="summary-table">
                    <tr>
                        <th>Pic</th>
                        <th>Company Name</th>
                        <th>CEO,BOD</th>
                        <th>Breif</th>
                        <th>Update</th>
                    </tr>


                    <tr>
                        <th>1</th>
                        <td>company 1</td>
                        <td>CEO</td>
                        <td>High Stock price</td>
                        <td><input type="submit" value="Update" />
                    </tr>
                    <tr>
                        <th>1</th>
                        <td>company 2</td>
                        <td>BOD</td>
                        <td>Low stock price</td>
                        <td><input type="submit" value="Update" />
                    </tr>
                    <tr>
                        <th>1</th>
                        <td>company 3</td>
                        <td>CEO</td>
                        <td>Normal stock prie</td>
                        <td><input type="submit" value="Update" />
                    </tr>

                </table>


            </form>
        </div>






    </div>
    <footer class="footer">
        <p style="line-height: 60px;padding: 1px 16px;">&copy; 2019 StockManagement.com</p>
    </footer>
</body>

</html>-