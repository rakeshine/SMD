<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title Page-->
<title>SMD Employee Registration</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/fixedheader/3.1.7/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/responsive/2.2.5/css/responsive.bootstrap.min.css"
	rel="stylesheet">


<!-- Jquery JS-->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/fixedheader/3.1.7/js/dataTables.fixedHeader.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.5/js/dataTables.responsive.min.js"></script>
<script
	src="https://cdn.datatables.net/responsive/2.2.5/js/responsive.bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var table = $('#list').DataTable({
			responsive : true
		});

		new $.fn.dataTable.FixedHeader(table);
	});
</script>
</head>

<body>
	<form:form method="POST" modelAttribute="employee"
		action="/createOrUpdate" name="employee">
		<div style="padding-left: 50px; padding-right: 50px">
			<table style="width: 100%">
				<tr>
					<td><h2>SMD Employees</h2></td>
					<td align="right"><a href="registration">Add New</a></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>

			<table id="list" class="table table-striped table-bordered nowrap"
				style="width: 100%">
				<thead>
					<tr>
						<th width="5%">Status</th>
						<th width="10%">SMD ID</th>
						<th width="15%">Name</th>
						<th width="15%">Father Name</th>
						<th width="5%">Date Of Joining</th>
						<th width="20%" style="color: red">Remarks &#128128</th>
						<th width="20%">Comments</th>
						<th width="10%">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${empList}" var="emp">
						<tr>
							<td>${emp.complete ? '&#10004':'&#10008'}</td>
							<td>${emp.empId}</td>
							<td>${emp.name}</td>
							<td>${emp.fatherName}</td>
							<td>${emp.dateOfJoining}</td>
							<td>${emp.remarks}</td>
							<td>${emp.comments}</td>
							<td><a href="/edit?id=${emp.id}">Edit</a> | <a
								href="/delete?id=${emp.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form:form>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->