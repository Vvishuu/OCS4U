<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/png" href="/OCS/images/logo/logo4.png">
</head>
<body>
<c:import url="base.jsp"/>
<div class="jumbotron" align="center">
<h4>Appointment Booked Successfully</h4>
<h5>Details: </h5>
<h6>${appointments.doctorId }</h6>
<h6>${appointments.patientId }</h6>
<h6>${appointments.appointmentDate }</h6>
<h6>${appointments.appointmentSlot }</h6>
</div>
</body>
</html>