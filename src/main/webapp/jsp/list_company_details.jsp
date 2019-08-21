<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,com.demo.stc.model.Company" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>List Company Details</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body class="bodystyle">
	<%
 List companyList=(List)request.getAttribute("companyList");
System.out.println(companyList);
%>
	<header class="header">
		<ul class="header-list">
			<li><img class="header-logo" src="images/stock-logo.png"></li>
			<li><span class="header-title">STOCK MARKET</span></li>
			<li id="logout-link"><a class="logout-link" href="#">Logout</a></li>

		</ul>
	</header>
	<div class="main">
		<ul class="nav-bar">
			<li><a href="import_stock_page.html">Import Data</a></li>
			<li><a href="list_company_details.html">Manage Company</a></li>
			<li><a href="list_stock_exchange.html">Manage Exchange</a></li>
			<li><a href="IPO.html">Update IPO details</a></li>
		</ul>
		<h1 style="text-align: center; line-height: 200px">LIST OF
			COMPANIES</h1>
		<div class="file-upload">
			<form id="form-summary" action="">
				<table id="summary-table">
					<tr>
						<th>Company Code</th>
						<th>Company Name</th>
						<th>CEO,BOD</th>
						<th>Breif</th>
						<th>Update</th>
					</tr>
					<%for(int i=0;i<companyList.size();i++){
					Company e=(Company)companyList.get(i);
					%>
					<tr>
						<td><%=e.getCompanyId() %></td>
						<td><%=e.getCompanyName() %></td>
						<td><%=e.getBoardOfDirectors() %></td>
						<td><%=e.getBreifWriteUp()%></td>
						<td><input type="button" name="edit" value="edit"></td>
					</tr>
					<%} %>
				</table>
			</form>
			<div>
				<br> <br> <br> <span>

					<h1 style="text-align: center;">
						<a href="create_new_company.html"
							style="text-decoration: none; color: black;">
							<button type="button" title="Click to add new company details"
								id="add-button" class="next round">&#43;</button> &nbsp;
							&nbsp;Add Company Details
					</h1>
				</span>

			</div>
		</div>


	</div>
	<footer class="footer">
		<p style="line-height: 60px; padding: 1px 16px;">&copy; 2019
			StockManagement.com</p>
	</footer>
</body>

</html>