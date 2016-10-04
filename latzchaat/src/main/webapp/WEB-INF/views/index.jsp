<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<c:set var="imgs" value="/resources/images" />
<c:set var="btstrpcss" value="/resources/bootstrap/css" />
<c:set var="btstrpjs" value="/resources/bootstrap/js" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="<c:url value="${btstrpjs}/bootstrap.min.js"/>"></script>
<!-- <script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<link rel="stylesheet"
	href="<c:url value="${btstrpcss}/bootstrap.min.css"/>">

<%-- <script src="<c:url value="${btstrpjs}/angular.min.js"/>"></script>
 --%>
<script src="<c:url value="${btstrpjs}/bootstrap.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="${btstrpcss}/bootstrap-theme.min.css"/>">

<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
</head>

<body>
	<div class="cover">
		<div class="navbar">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-ex-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						src="<c:url value="${imgs }/logo.png"/>"></a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active">
							<%-- <a style="color:white;" href="${session.getContextPath()}/latzchaat/index">Home</a> --%>
							<a style="color: white;" id="abt" class="abt"
							href="${session.getContextPath()}/latzchaat#studentspeak">Student
								Speak</a>

						</li>
						<li><a style="color: white;" href="#contact">Contacts</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- <div class="cover-image" style="background-image: url(https://unsplash.imgix.net/photo-1418065460487-3e41a6c84dc5?q=25&amp;fm=jpg&amp;s=127f3a3ccf4356b7f79594e05f6c840e);"></div> -->
		<div class="cover-image poster" id="poster"
			style="background-image: url(/latzchaat/resources/images/about-us.jpg);"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1 class="text-inverse">Latzchaat</h1>
					<p class="text-inverse">Alumni for NIIT Students</p>
					<br> <br> <a class="btn btn-lg btn-primary"
						href="${session.getContextPath()}/latzchaat/Login">Login</a> <a
						class="btn btn-lg btn-primary"
						href="${session.getContextPath()}/latzchaat/Register">Register</a>
				</div>
			</div>
		</div>
	</div>
	<div class="studentspeak" id="studentspeak">
		<div class="section" id="section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<img src="<c:url value="${imgs }/2.jpg"/>"
							class="img-responsive" />

					</div>
					<div class="col-md-6">
						<h1 class="text-primary">Student Speak</h1>
						<h3>Chandhan Sai</h3>
						<p> Message <!-- I came to NIIT with the hope of gathering knowledge from
							the IT Education pioneer and getting a job in a renowned IT
							company was my greatest aspiration. The career counselors really
							helped me a lot in deciding and paving a way out to get the right
							job. The faculty were top-notch as I expected. They provided
							ample information regarding the subjects and cleared my doubts or
							obstacles that came in the way. The environment was friendly and
							cheerful and there was a challenging atmosphere. Today, I am
							happy to say that NIIT kept its word and placed me in a great MNC
							company "ATOS". The training molded me to suit the current IT
							employment scenario. We had rigorous technical and non-technical
							mock-sessions to improve our skills and face the interviews and
							be prepared to answers any questions the interviewer threw at us.
							The career guidance team really paved the way for success and I
							owe it all to them for providing me a job, I dreamt of. They were
							there in every step of my journey and provided me the intellect
							that was immensely required to secure not a good, but a 'great'
							job. I can never forget the immense time and care they have taken
							in providing me with a great job. THANKS A LOT.. AND KUDOS TO THE
							NIIT TEAM. --></p>

					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h1 class="text-primary">Student Speak</h1>
						<h3>Sai Speaks</h3>
						<p> Message from students</p>
					</div>
					<div class="col-md-6">
						<img src="<c:url value="${imgs }/1.jpg"/>"
							class="img-responsive" />

					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container contact" id="contact" >
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="well">
					<div class=ExternalClassE33FF4F0A7E748DA950C78D632CEB2DC></div>
					<span lang=EN-US
						style="font-size: 11pt; font-family: 'Calibri', 'sans-serif'">
						<p class=MsoNormal style="margin: 0in 0in 0pt">
							<span style="font-size: 14pt"><strong>Get In
									Touch</strong></span>
						</p>
						<div class=ExternalClassE33FF4F0A7E748DA950C78D632CEB2DC>
							<ul type=disc>
								<li class=MsoNormal
									style="margin: 0in 0in 0pt; tab-stops: list .5in"><span
									style="font-size: 12pt">As a student of NIIT, for any
										kind of assistance, you can contact the Student Services
										Advisor (SSA) /Faculty /GL /Centre Head at your NIIT Education
										centre.</span></li>
							</ul>
						</div>
						<ul type=disc>
							<li class=MsoNormal
								style="margin: 0in 0in 0pt; tab-stops: list .5in"><span
								style="font-size: 12pt">For sharing your Complaint, login
									to </span><a href="http://www.niitstudent.com/india"><span
									style="font-size: 12pt"><font color="#0000ff">www.niitstudent.com/india</font></span></a><span
								style="font-size: 12pt">. Use Complaints link, select
									applicable category and submit your Complaint.</span></li>
						</ul>
						<span style="font-size: 12pt">
							<ul type=disc>
								<li class=MsoNormal
									style="margin: 0in 0in 0pt; tab-stops: list .5in"><span
									style="font-size: 12pt">If you are not able to login to
								</span><a href="http://www.niitstudent.com/india"><span
										style="font-size: 12pt"><font color="#0000ff">www.niitstudent.com/india</font></span></a><span
									style="font-size: 12pt">, write to <a
										href="mailto:wecare@niitstudent.com">wecare@niitstudent.com</a>.
								</span></li>
					</span>
					</ul>
						<p class=MsoNormal
							style="margin: 0in 0in 0pt; tab-stops: list .5in">
							<span style="font-size: 12pt"></span><span
								style="font-size: 12pt"> - Please note any other query
								will not be responded by this mail ID</span>
						</p>
						<p class=MsoNormal style="margin: 0in 0in 0pt 0.5in">
							<span style="font-size: 12pt"></span>
						</p>
						<ul style="margin-top: 0in" type=disc>
							<li class=MsoNormal
								style="margin: 0in 0in 0pt; tab-stops: list .5in"><span
								style="font-size: 12pt">If you are not a student of NIIT
									and wish to have information about our IT courses and Centres,
									you may write to </span><a href="mailto:careercourses@niit.com"><span
									style="font-size: 12pt"><font color="#0000ff">careercourses@niit.com</font></span></a><span
								style="font-size: 12pt"> or call at our tollfree numbers
									: 1800 180 6448 (BSNL/ MTNL) or 1800 102 6448 (Airtel) </span></li>
						</ul>
						<p class=MsoNormal style="margin: 0in 0in 0pt 0.5in">
							<span style="font-size: 12pt"><span></span></span>
						</p>
						<p class=MsoNormal style="margin: 0in 0in 0pt">
							<span style="font-size: 12pt"></span>
						</p>
						<p class=MsoNormal style="margin: 0in 0in 0pt">
							<span><strong>NIIT </strong>:<br>NIIT,<br>
								Parrys,<br>Chennai, TamilNadu<br>India<br>Tel:
								044-2345678</span><span style="font-size: 12pt"></span>
						</p>
						<p class=MsoNormal style="margin: 0in 0in 0pt">
							<span style="font-size: 12pt"> www.niit.com/</span>
						</p>
					</span>

				</div>
			</div>
		</div>
</body>

</html>


