<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2>Add Person Data</h2>
		<form:form method="POST" action="/sdnext/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="patientid">Person ID:</form:label></td>
			        <td><form:input path="patientid" value="${patient.patientid}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="fname">Person F Name:</form:label></td>
			        <td><form:input path="fname" value="${patient.fname}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="mrn">MRN:</form:label></td>
			        <td><form:input path="mrn" value="${patient.mrn}"/></td>
			    </tr>
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty patients}">
		<h2>List Persons</h2>
	<table align="left" border="1">
		<tr>
			<th>Person ID</th>
			<th>Person Name</th>
			<th>Actions on Row</th>
		</tr>

		<c:forEach items="${patients}" var="patient">
			<tr>
				<td><c:out value="${patient.patientid}"/></td>
				<td><c:out value="${patient.fname}"/></td>
				<td><c:out value="${patient.mrn}"/></td>
				<td align="center"><a href="edit.html?patientid=${patient.patientid}">Edit</a> | <a href="delete.html?patientid=${patient.patientid}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>