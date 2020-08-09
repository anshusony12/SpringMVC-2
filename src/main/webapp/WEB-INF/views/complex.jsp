<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/script.js"/>"></script>
<title>Complex Form</title>
</head>
<body>
	<img class="image" alt="my image" src="<c:url value="/resources/images/anas-alshanti-feXpdV001o4-unsplash.jpg"/>">
	<div class="container mt-3">
		<div class="card col-md-6 offset-3"
			style="border-radius: 50px 0px 50px 0px; border-color: red;">
			<div class="card-body">
				<h3 class="text-center">Register Students</h3>
				<div class="alert alert-danger" role="alert">
					<form:errors path="student.*" />
				</div>
				<form action="handler" method="post">
					<div class="form-group">
						<label for="exampleFormControlInput1">Your Name</label> <input
							type="text" name="name" class="form-control"
							id="exampleFormControlInput1" placeholder="Enter full name">
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput1">Student_ID</label> <input
							type="text" name="id" class="form-control"
							id="exampleFormControlInput1" placeholder="Enter your id">
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput1">DOB</label> <input
							type="text" name="date" class="form-control"
							id="exampleFormControlInput1" placeholder="dd/mm/yyyy">
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">Select Courses</label> <select
							class="form-control" name="courses"
							id="exampleFormControlSelect1" multiple>
							<option>Algorithm</option>
							<option>C language</option>
							<option>AI</option>
							<option>Machine Learning</option>
							<option>Java Language</option>
						</select>
					</div>
					<div class="form-group">
						<label class="mr-5" for="exampleFormControlInput1">Select
							Gender</label> <input type="radio" class="mr-1" name="gender"
							value="male" id="exampleFormControlInput1"><span
							class="mr-4">Male</span> <input class="mr-1" type="radio"
							name="gender" value="female" id="exampleFormControlInput1"><span>Female</span>
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">Student Type</label> <select
							class="form-control" id="exampleFormControlSelect1" name="type">
							<option>Normal</option>
							<option>Old Student</option>
						</select>
					</div>
					<div class="card form-control">
						<div class="card-body">
							<h5>
								Your Address
								</h3>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Street" name="address.street">
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter city" name="address.city">
								</div>
						</div>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-outline-success">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>