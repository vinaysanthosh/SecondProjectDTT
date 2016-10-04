

<!DOCTYPE HTML>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
  <head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
    
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <style type="text/css">
    
.navbar-default {
	background-color: #CC0000;
}

.dropdown-submenu {
	position: relative;
}
.navbar-text>a {
	color: inherit;
	text-decoration: none;
}

.header {
	color: #36A0FF;
	font-size: 27px;
	padding: 10px;
}

.bigicon {
	font-size: 35px;
	color: #36A0FF;
}
    </style>
  </head>
  
 <%--  <%@include file="Header.jsp"%> --%>
  <body ng-app="chatApp">
  
    <div ng-controller="ChatCtrl" class="container">
    <div class="row">

<div class="col-md-12 com-xs-12">
    
      <form ng-submit="addMessage()" name="messageForm">
      <a 	href="http://localhost:8080/latzchaat/UserHome">Home</a>
        <input type="text" placeholder="Compose a new message..." ng-model="message" />
        <div class="info">
          <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          <button ng-disabled="message.length > max || message.length === 0">Send</button>
        </div>
      </form>
      <hr />
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
      	<span>{{message.username}}</span>
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}">{{message.message}}</span>
      </p>
    </div>
    </div>
    </div>
    <link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
    <script src="resources/libs/sockjs/sockjs.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="resources/libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
    <script src="resources/libs/angular/angular.min.js"></script>
    <script src="resources/libs/lodash/dist/lodash.min.js"></script>
    <script src="resources/js/app.js" type="text/javascript"></script>
    <script src="resources/js/controllers.js" type="text/javascript"></script>
    <script src="resources/js/services.js" type="text/javascript"></script>
  </body>

</html>