<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>create_new_company</title>
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
<li> <a href="import_stock_page.jsp">Import Data</a></li>
            <li><a href="list_company_details.jsp">Manage Company</a></li>
            <li><a href="list_stock_exchange.jsp">Manage Exchange</a></li>
            <li><a href="IPO.jsp">Update IPO details</a></li>

        </ul>

        <h1 style="text-align: center;line-height: 200px">CREATE IPO DETAILS</h1>
        <div class="file-upload">
            <form id="form-summary" action="">
                <table id="summary-table">

                    <tr>
                        <td>Company Code</td>
                        <td><input type="text" name="ccode" placeholder="Company Code" /></td>
                    </tr>
                    <tr>
                        <td>Stock exchange Name</td>
                        <td><input type="text" name="IPO_Add" placeholder="Stock Exchange Name" /></td>
                    </tr>

                    <tr>
                        <td>Price per share</td>
                        <td><input type="text" name="IPO_Price" placeholder="Price_per_share" /></td>
                    </tr>
                    <tr>
                        <td>Total no of shares</td>
                        <td><input type="text" name="IPO_Shares" placeholder="Total no of shares" /></td>
                    </tr>
                    <tr>
                        <td>Open date time</td>
                        <td><input type="text" name="IPO_Date" placeholder="Open date time" /></td>
                    </tr>
                    <tr>
                        <td>Remarks</td>
                        <td><input type="text" name="IPO_Remarks" placeholder="Remarks" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center"><input type="submit" value="Submit" />
                        </td>
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