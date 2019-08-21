<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>import_stock_page</title>
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
        <h1 style="text-align: center;line-height: 200px">IMPORT EXCEL</h1>
        <div class="file-upload">
            <form id="form-upload" action="">
                <table id="upload-table">
                    <tr id="upload-row">
                        <td id="upload-data">Select Excel file to be Uploaded</td>
                        <td id="upload-data"><input class="input-file" type="file" name="fileupload" value="Upload"
                                id="fileupload" accept=".xlsx,.xlsm,.xltx,.xltm" multiple></td>
                        <td id="upload-data"><input class="upload-button" type="submit" value="Upload"></td>
                    </tr>
                </table>
            </form>
        </div>
        <br>
        <br>
        <h1 style="text-align: center;">SUMMARY OF UPLOAD</h1>
        <br>
        <div class="file-upload">
            <form id="form-summary" action="">
                <table id="summary-table">
                    <tr>
                        <td><label for="company_name">Company Name</label></td>
                        <td><input type="text" name="name" id="company_name"></td>
                    </tr>
                    <tr>
                        <td><label for="stock_exchange">Stock Exchane</label></td>
                        <td><input type="text" name="exchange" id="stock_exchange"></td>
                    </tr>
                    </tr>
                    <td><label for="no_of_records">No of Records</label></td>
                    <td><input type="number" name="no_records" id="no_of_records"></td>
                    </tr>
                    <tr>
                        <td><label for="from_date">From Date</label></td>
                        <td><input type="date" id="from_date"></td>
                        <td><label for="to_date">To Date</label></td>
                        <td><input type="date" id="to_date"></td>
                    </tr>
                    <tr>

                        <td></td>
                        <td><input type="button" id="save" value="OK"></td>
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