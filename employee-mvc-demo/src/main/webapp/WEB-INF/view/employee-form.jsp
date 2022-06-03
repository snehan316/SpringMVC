<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
</head>
<body>
 <form:form action="processForm" modelAttribute="employee">
  First Name: <form:input path="firstName"/>
  <br><br>
  Last Name: <form:input path="lastName"/>
  <br><br>
  Country:
  <form:select path="country">
  	<form:option value="India" label="India"/>
  	<form:option value="USA" label="USA"/>
  	<form:option value="Germany" label="Germany"/>
  	<form:option value="Japan" label="Japan"/>
  </form:select>
  <br><br>
  Preferred Language:
  Java <form:radiobutton path="favoriteLanguage" value="Java"/>
  Python <form:radiobutton path="favoriteLanguage" value="Python"/>
  C# <form:radiobutton path="favoriteLanguage" value="C#"/>
  <br><br>
  Operating Systems:
  Linux <form:checkbox path="operatingSystems" value="Linux"/>
  Mac   <form:checkbox path="operatingSystems" value="Mac"/>
  Windows <form:checkbox path="operatingSystems" value="Windows"/>
  <br><br>
  <input type="submit" value="Submit"/>
  
 </form:form>
</body>
</html>