<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>SMD Employee Registration</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
	<form:form method="POST" modelAttribute="employee"
		action="/createOrUpdate" name="employee">
		<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
			<div class="wrapper wrapper--w680">
				<div class="card card-4">
					<div class="card-body">
						<table style="width: 100%">
							<tr>
								<td><h2>SMD Employee Registration Form</h2></td>
								<td align="right"><a href="list">Back</a></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</table>
						<form:hidden path="id" />
						<div class="input-group">
							<label class="label">SMD Employee ID</label>
							<form:input path="empId" class="input--style-4" type="text"
								name="empId" />
						</div>

						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Name</label>
									<form:input path="name" class="input--style-4" type="text"
										name="name" />
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Father's Name</label>
									<form:input path="fatherName" class="input--style-4"
										type="text" name="fatherName" />
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Date Of Birth</label>
									<div class="input-group-icon">
										<form:input path="dob" class="input--style-4 js-datepicker"
											type="text" name="dob" />
										<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Gender</label>
									<div class="p-t-10">
										<label class="radio-container m-r-45">Male <form:radiobutton
												path="gender" checked="checked" name="gender" /> <span
											class="checkmark"></span>
										</label> <label class="radio-container">Female <form:radiobutton
												path="gender" name="gender" /> <span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="input-group">
							<label class="label">Address</label>
							<form:input path="address" class="input--style-4" type="text"
								name="address" />
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Email</label>
									<form:input path="emailId" class="input--style-4" type="email"
										name="emailId" />
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Phone Number</label>
									<form:input path="mobileNo" class="input--style-4" type="text"
										name="mobileNo" />
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Date Of Joining</label>
									<div class="input-group-icon">
										<form:input path="dateOfJoining"
											class="input--style-4 js-datepicker" type="text"
											name="dateOfJoining" />
										<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Date Of Termination</label>
									<div class="input-group-icon">
										<form:input path="dateOfTermination"
											class="input--style-4 js-datepicker" type="text"
											name="dateOfTermination" />
										<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Bank Name</label>
									<form:input path="bankName" class="input--style-4" type="text"
										name="name" />
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Bank IFSC</label>
									<form:input path="bankIfscCode" class="input--style-4"
										type="text" name="bankIfscCode" />
								</div>
							</div>
						</div>
						<div class="input-group">
							<label class="label">Bank Account No</label>
							<form:input path="bankAccountNo" class="input--style-4"
								type="text" name="bankAccountNo" />
						</div>
						<div class="input-group">
							<label class="label">ESI No</label>
							<form:input path="esiNo" class="input--style-4" type="text"
								name="esiNo" />
						</div>
						<div class="input-group">
							<label class="label">EPF No</label>
							<form:input path="epfNo" class="input--style-4" type="text"
								name="epfNo" />
						</div>
						<div class="input-group">
							<label class="label">Remarks</label>
							<form:input path="remarks" class="input--style-4" type="text"
								name="remarks" />
						</div>
						<div class="input-group">
							<label class="label">Comments</label>
							<form:input path="comments" class="input--style-4" type="text"
								name="comments" />
						</div>
						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Jquery JS-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<!-- Vendor JS-->
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/datepicker/moment.min.js"></script>
		<script src="vendor/datepicker/daterangepicker.js"></script>

		<!-- Main JS-->
		<script src="js/global.js"></script>
	</form:form>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->