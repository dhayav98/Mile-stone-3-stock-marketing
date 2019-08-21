<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<li><a href="import_stock_page.jsp">Import Data</a></li>
			<li><a href="list_company_details.jsp">Manage Company</a></li>
			<li><a href="list_stock_exchange.jsp">Manage Exchange</a></li>
			<li><a href="IPO.jsp">Update IPO details</a></li>

		</ul>

		<h1 style="text-align: center; line-height: 200px">CREATE NEW
			STOCK EXCHANGE</h1>
		<div class="file-upload">
			<form:form id="form-summary" action="/insert_stock_exchange" method="post" modelAttribute="stockexchange">
				<table id="summary-table">
					<tr>
						<td><label for="stockExchangeName">Stock Name</label></td>
						<td><form:input type="text" path="stockExchangeName" placeholder="Stock Name" /></td>
					</tr>
					<tr>
						<td><label for="contactAddress">Contract Address</label></td>
						<td><form:input type="text" path="contactAddress"
							placeholder="Stock Exchange Name" /></td>
					</tr>
					<tr>
						<td><label for="brief">Brief</label></td>
						<td><form:input type="text" path="brief" placeholder="Brief" /></td>
					</tr>
					<tr>
						<td><label for="remarks">Remarks</label></td>
						<td><form:input type="text" path="remarks" placeholder="Remarks" /></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center"><input
							type="submit" value="Submit" /></td>
					</tr>
				</table>
			</form:form>
		</div>

	</div>
	<footer class="footer">
		<p style="line-height: 60px; padding: 1px 16px;">&copy; 2019
			StockManagement.com</p>
	</footer>
</body>

</html>















