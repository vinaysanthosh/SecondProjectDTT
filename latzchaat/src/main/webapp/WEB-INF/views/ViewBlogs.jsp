
<%@include file="Header.jsp"%>

<script>
	var app = angular.module("search", []).controller("productTable",
			function($scope) {
				$scope.products = ${data};
			}); 	
</script>
<p>&nbsp;</p>
<body>
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
		<p>&nbsp; &nbsp;</p>
		<div class="container">
		<div class="row">

			

			<div class="col-xs-12 col-md-12">

				<table class="table-responsive table-hover table-striped" style="width: 100%">
					<thead>
					</thead>

					<tbody>

						<tr ng-repeat="p in products | filter:searchText" class="table-responsive">

							
							
						 	 <td>
								<form action="${session.getContextPath()}/autobazaar/ProductDetail"  method="post" >
								
								<h1><a href="">{{p.title}}</a></h1>
								<p>{{p.description}}</p>
								<p>{{p.owner}}</p>
									 
								</form>
							</td>


						</tr>

					</tbody>

				</table>

			</div>
		</div>
	</div>

</div>
