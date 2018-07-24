<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
	function goBack() {
		window.history.back();
	}
</script>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: #F7E3F4;}
</style>
<style>h1 {
    color: E6CFF8;
    text-shadow: 2px 2px 4px #000000;
}</style>


</head>
<body bgcolor="lightblue">
      <h1>Customers with balance less than 1500   </h1>
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