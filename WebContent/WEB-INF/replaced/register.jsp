<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 align="center">Register</h3>
<h4 align="center" style="color: red;">${msg }</h4>
<form action="addProfile" method="post">
<table align="center">
<tr><td>FirstName:</td><td><input type="text" name="firstName" required></td></tr>
<tr><td>LastName:</td><td><input type="text" name="lastName" required></td></tr>
<tr><td>DateOfBirth:</td><td><input type="date" name="dateOfBirth" required></td></tr>
<tr><td>Gender:</td><td><input type="radio" name="gender" value="male">Male</td><td><input type="radio" name="gender" value="female">Female</td></tr>
<tr><td>Street:</td><td><input type="text" name="street" required></td></tr>
<tr><td>Location:</td><td><input type="text" name="location" required></td></tr>
<tr><td>City:</td><td><input type="text" name="city" required></td></tr>
<tr><td>State:</td><td><input type="text" name="state" required></td></tr>
<tr><td>PinCode:</td><td><input type="text" name="pincode" required></td></tr>
<tr><td>Mobile No:</td><td><input type="text" name="mobileNumber" required></td></tr>
<tr><td>Email Id:</td><td><input type="text" name="emailId" required></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
<tr><td><input type="submit" value="Register"></td></tr>
</table>
</form>
<h5><a href="#">Login</a></h5>
</body>
</html>