<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>CRM - All Leads</title>
	
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="/custom_css/entityViewPageStyles.css">
</head>
<body>
	<header>
		<h2>Lead View Page</h2>
	</header>
	
	<nav>
		<a href="/CRM/dashboard"> 
			<img alt="back-icon" id="back-button" src="https://cdn5.vectorstock.com/i/thumb-large/22/24/back-icon-vector-10472224.jpg"> 
			DashBoard 
		</a>
		<a href="/CRM/logout">
			<img src="https://findicons.com/files/icons/1620/crystal_project/128/exit.png" alt="Logout icon" />Logout
		</a>
	</nav>

		<div class="content">
			<div class="card">
				<div class="entity-table">
					<table>
						<c:choose>
							<c:when test="${ not empty leadList }">
								<caption>Leads</caption>
								<tr>
									<th>Lead Name</th>
									<th>Address</th>
									<th>Status</th>
									<th>Phone</th>
									<th>Company</th>
									<th>Email ID</th>
									<th>Website</th>
									<th>Lead Source</th>
									<th>Employee Count</th>
									<th>Annual Revenue</th>
									<th>Industry</th>
								</tr>
								<c:forEach var="lead" items="${ leadList }">
									<tr>
										<td>${ lead.name }</td>
										<td>${ lead.address }</td>
										<td>${ lead.leadStatus }</td>
										<td>${ lead.phone }</td>
										<td>${ lead.company }</td>
										<td>${ lead.emailId }</td>
										<td>${ lead.website }</td>
										<td>${ lead.leadSource }</td>
										<td>${ lead.employeeCount }</td>
										<td>${ lead.annualRevenue }</td>
										<td>${ lead.industry }</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<caption>No Leads available</caption>
							</c:otherwise>
						</c:choose>
					</table>
				</div>
			</div>

		
		<!-- Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
  </div>
  </body>
</html>

