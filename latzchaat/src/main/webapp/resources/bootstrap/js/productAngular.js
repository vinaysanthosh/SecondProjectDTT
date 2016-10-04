var app = angular.module("search", []).controller("productTable",
			function($scope) {

				$scope.products=${listProduct};
				

			});