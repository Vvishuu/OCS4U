<%@page import="com.bean.Credentials"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
     background: url("/OCS/images/doctor-background.jpeg") fixed;
    background-size: cover;
}</style>

</head>
<body>

<h1 align="center">===== View ALL Appointment =======</h1>
<c:forEach items="${appointmentList}" var="e" >
  <c:out value="${e.doctorId}"/>
   <c:out value="${e.appointmentId}"/>
   <c:out value="${e.appointmentDate}"/>
    <c:out value="${e.appointmentSlot}"/>
<hr>
</c:forEach>
<hr>
<a href="../../admin/home">Home</a>

</body>
</html>