<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<style>h1 {
    color: D2EBF1;
    text-shadow: 2px 2px 4px #000000;
}</style>



<title>view all</title>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body bgcolor="slateblue">

<h1>Details Of All Customers</h1>
     <table >
     	<tr>
     		<td>Customer Name</td>
     		<td>Mobile Number</td>
     		<td>Wallet Balance</td>
     	</tr>
     	<c:forEach  items="${customer}" var="customer">
			<tr><td>${customer.name}</td>
			<td>${customer.mobileNo}</td>
			<td>${customer.wallet.balance}</td></tr>
		</c:forEach>
     </table>
		<hr>
	
	

	<button onclick="goBack()">Go Back</button>
</body>
</html>