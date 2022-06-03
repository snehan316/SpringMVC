<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body>
Employee is Confirmed: ${employee.firstName} ${employee.lastName}
<br><br>
Country: ${employee.country}
<br><br>
Preferred Language: ${employee.favoriteLanguage}
<br><br>
Operating Systems:
<ul>
	<c:forEach var="temp" items="${employee.operatingSystems}">
	<li>${temp}</li>
	</c:forEach>
</ul>
</body>
</html>