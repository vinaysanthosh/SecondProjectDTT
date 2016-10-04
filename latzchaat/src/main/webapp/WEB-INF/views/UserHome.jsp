<%@include file="Header.jsp"%>

<body>
<p>
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;</p>
<div class="container-fluid">
	<div class="row">
	<p>
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;</p>

		<div class="col-md-3 col-sx-3">
		
		<form:form commandName="userDetail"> <%-- action="edit/${userDetail.id}"  --%>
		<div>
				<img src="resources/images/home2.jpg" class="img-circle" height="300" width="300"/>
			</div>
			<div>
			<center>
			
			</center>
			</div>
			 
				</form:form>
			<div></div>
		</div>

		<div class="col-md-7 col-sx-7 ">




			<div class="container">
			<form:form commandName="userDetail">
			<h2>Hello ${userDetail.displayname}</h2>
			</form:form>
				
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home">Home</a></li>
					<li><a href="#menu1">Blogs</a></li>
					<li><a href="${session.getContextPath()}/latzchaat/chat1">Chat</a></li>
					<li><a href="#menu3">Profile</a></li>
				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						&nbsp;&nbsp;
					
					<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div id="imageslider" class="carousel slide" data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#imageslider" data-slide-to="0" class="active"></li>
					<li data-target="#imageslider" data-slide-to="1"></li>
					<li data-target="#imageslider" data-slide-to="2"></li>
					<li data-target="#imageslider" data-slide-to="3"></li>
					<li data-target="#imageslider" data-slide-to="4"></li>
					<li data-target="#imageslider" data-slide-to="6"></li>
				</ol>
				<center>
					<div class="carousel-inner">

						<div class="item active">
							<img class="img-rounded"
								style="height: 450px;width:100%; background-size: cover;"
								src="resources/images/NIITDT.jpg" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 450px; background-size: cover;width:100%"
								src="resources/images/Knowledge.JPG" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 450px; background-size: cover;width:100%"
								src="resources/images/Boost.jpg" />
						</div>

						<div class="item">
							<img class="img-rounded"
								style="height: 450px; width:100%; background-size: cover;"
								src="resources/images/Benefit.JPG" />
						</div>

						<div class="item">
							<img class="img-rounded"
								style="height: 450px; width:100%; background-size: cover;"
								src="resources/images/niitportal.jpg" />
						</div>

						
					</div>
				</center>

				<a class="carousel-control left" href="#imageslider"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="carousel-control right" href="#imageslider"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>
	
	
	<p>&nbsp;</p>
	
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">

<form:form commandName="jobs">
			<h3>Jobs List</h3>
			<c:if test="${!empty jobs}">
				<table class="tg table table-striped">
					<tr style="background: #a2cad3; color: white">
						
						<th width="120">Profile</th>
						<th width="60">Job Description</th>
						<th width="60">Company</th>
						<th width="80">Salary</th>
						<th width="120">Interview Address</th>
						<th width="60">Date</th>
						<th width="60">Eligibility</th>
						<!-- <th width="60">Update</th>
						<th width="60">Delete</th> -->
					</tr>
					<c:forEach items="${jobs}" var="job">
						<tr>
							<%-- <td>${job.jobid}</td> --%>
							<input type="hidden" value="${job.jobid }" name="jobid"></input>
							<td>${job.profile}</td>
							<td>${job.description}</td>
							<td>${job.company}</td>
							<td>${job.salary}</td>
							<td>${job.address}</td>
							<td>${job.date}</td>
							<td>${job.eligibility}</td>
						<%-- 	<td><a class="btn btn-info"
								href="<c:url value='/UpdateJob/${job.jobid}' />">Update
									<span class="glyphicon glyphicon-edit"></span>
							</a></td>
							<td><a class="btn btn-danger"
								href="<c:url value='/DeleteJob/${job.jobid}' />">Delete
									<span class="glyphicon glyphicon-remove-sign"></span>
							</a></td> --%>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			</form:form>
		</div>
	
</div>
	
					</div>
					
					</div>
					<div id="menu1" class="tab-pane fade">
						<div ng-app="search">
	<div class="container" ng-controller="productTable">

		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				<label>Search your Blog</label> <input type="search"
					ng-model="searchText" class="form-control" id="inputSearch"
					placeholder="Search Here" />
				<!-- <input type="search" ng-model="searchText.city" class="form-control" id="inputSearch" placeholder="Search Here"/> -->

			</div>
		</div>
		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				 <a href="${session.getContextPath()}/latzchaat/CreateBlog"><span class="glyphicon glyphicon-share"></span>Create New</a>

			</div>
		</div>
		<p>&nbsp; &nbsp;</p>
		<div class="container">
		<div class="row">

			

			<div class="col-xs-12 col-md-12">

				<table class="table-responsive table-hover table-striped" style="width: 100%">
					<thead>
					</thead>

					<tbody>

						<tr ng-repeat="p in products | filter:searchText" class="table-responsive">

<!-- 							
							<td><p>{{p.blogid}}</p>
								<p>{{p.owner}}</p></td> -->
						 	 <td>
								<form action="${session.getContextPath()}/latzchaat/SingleBlog"  method="post" >
								
								<!-- <h2><a type="submit" href="">{{p.title}}</a></h2> -->
							
								<input type="hidden" value="{{p.blogid}}" name="blogid"/>
								<input type="hidden" value="{{p.title}}" name="title"/>
								<input type="hidden" value="{{p.owner}}" name="owner"/>
								<input type="hidden" value="{{p.description}}" name="description"/>
								<input type="hidden" value="{{p.detail}}" name="detail"/>
								<input type="hidden" value="{{p.status}}" name="status"/>
									<button type="submit" class="btn btn-link"><h3>{{p.title}}</h3></button>
									<p><h5></h5> {{p.title}}</h5></p>
								
								<p><h5> {{p.owner}}</h5></p>
									 
								</form>
							</td>


						</tr>

					</tbody>

				</table>

			</div>
		</div>
	</div>

</div>
		</div>				
					</div>
					
					
					
					
					<div id="menu2" class="tab-pane fade">
						<h3>Menu 2</h3>


					</div>
					<div id="menu3" class="tab-pane fade">
						<h3>Profile</h3>
			
			<style>#form{backgroung-color:#ffa366;}</style>			   
 <div class="container" >
  <form:form id="form" action="UserHome/${userDetail.id}"  class="form-horizontal well" modelAttribute="userDetail"  commandName="userDetail">
    <h1>Edit Profile</h1>
  	<hr>
	<div  class="row">
      <!-- left column -->
      <div class="col-md-4">
        <div class="text-center">
         
    <img src="resources/images/home3.jpg" class="img-circle"  height="300" width="300"/> 
         
          
        </div>
      </div>
     
      <!-- edit form column -->
    <div class="col-md-8 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">x</a> 
          <i class="fa fa-coffee"></i>
        <strong>STUDENT INFO</strong>
        </div> 
      <!--   <h3>Student info</h3> -->
        
       <!--  <form class="form-horizontal" role="form">
         -->
        
        <div class="form-group">
            <%-- <label class="col-lg-3 control-label">ID:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="id"  value="${user.id}" readonly="true"/>
            </div>
          </div> --%>
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="fname" required="Please Enter First Name" /> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="lname" required="Please Enter Last Name"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input class="form-control" type="email" readonly="true"  path="email" required="Please Enter email"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="mobile" required="Please Enter Mobile Number"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Zipcode:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="zipcode" required="Please Enter Zipcode"/>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-md-3 control-label">City:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="city" required="Please Enter City"/>
            </div>
          </div>
          
          
           <div class="form-group">
            <label class="col-md-3 control-label">GENDER:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="gender" required="Please Enter Gender"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">          
           
           
          <input type="submit" class="btn btn-default" value="Update">
            
            </div>
          </div>
      <!--   </form> -->
      </div>
  </div>
  </form:form>
</div>
<hr> 
							
							
					</div>
				</div>
			</div>

			<script>
			var app = angular.module("search", []).controller("productTable",
					function($scope) {
						$scope.products = ${data};
					}); 
			
				$(document).ready(function() {
					$(".nav-tabs a").click(function() {
						$(this).tab('show');
					});
				});
			</script>

		</div>
		<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
		<%@include file="Footer.jsp"%>
	</div>
	

</body>
