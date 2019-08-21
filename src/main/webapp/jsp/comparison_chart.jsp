<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>comparison_chart</title>
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

        <h1 style="text-align: center;line-height: 200px">COMPARISON CHART</h1>
        
        <div class="file-upload">
            <section id="compare-container">
            <form id="form-summary" name="compare-form" action="">
                <table id="summary-table">
                    <tr>
                        <td><label for="company/sector">Select Company/Sector</label></td>
                        <td><select>
                            <option>Company1</option>
                            <option>Company2</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td><label for="stockexchange">Select Stock Exchange</label></td>
                        <td><select>
                            <option>BSE</option>
                            <option>BSE,NSE</option>
                        </select></td>
                    </tr>
                    <tr><td><label for="company_name">Company Name</label></td>
                        <td><input  type="text" name="company_name" id="company_name"></td></tr>
                    </tr>
                    
                    <tr>
                        <td><label for="from_date">From Date</label></td>
                        <td><input type="date" id="from_date"></td>
                        <td><label for="to_date">To Date</label></td>
                        <td><input type="date" id="to_date"></td>
                    </tr>
                    <tr>
                        <td>Specify periodicity</td>
                        <td></td>
                        <td></td>
                        <td><button type="button" title="Click to add more company details" style="float:right;" id="add-button" class="next round" onclick="CloneForm('compare-form');">&#43;</button></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="button" name="generate_map" id="generate_map" value="Generate Map"> </td>
                    </tr>
                </table>
            </form>
        </section>
        </div>
  

</div>




        



 
<div class="container body-content">    
    <footer class="footer">
        <p style="line-height: 60px;padding: 1px 16px;">&copy; 2019 StockManagement.com</p>
    </footer>
</div>
    <script>
            function CloneForm(formName) {
            var formCount = document.forms.length;
            var oForm = document.forms[formName];
            var clone = oForm.cloneNode(true);
            clone.name += "_" + formCount;
            document.getElementById('compare-container').appendChild(clone);
            }
</script>

</body>

</html>