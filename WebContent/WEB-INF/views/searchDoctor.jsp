<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/png" href="/OCS/images/logo/logo4.png">
</head>
<body>
<c:import url="base.jsp"/>
<div class="jumbotrone">
<h3>Search for a Doctor</h3>
<div class="jumbotron" style="border-radius: 20px">
	<form class="form-horizontal" action="findDoctor" method="post" >
  <div class="form-group">
    <div><span class="text-danger small">${msg }</span></div>
    <label class="control-label col-sm-2">Specialization:</label>
    <div class="col-sm-10">
	<s:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="root"/>
	<s:query var="result" dataSource="${ds }" sql="select * from doctor"/>
	<select name="doctorType">
	<c:forEach items="${result.rows }" var="doctor">
		<option value="${doctor.specialization }">${doctor.specialization }</option>
	</c:forEach>
	</select>
	</div>
  </div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button class="btn btn-success" type="submit">Search</button>
			</div>
		</div>
	</form>
</div>
</div>
</body>
</html>