<%-- 
    Document   : index
    Created on : Jun 29, 2016, 5:43:55 PM
    Author     : haykh
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<doctype html>
<html ng-app>
	<head>
		<title>Hello AngularJS</title>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
                
    	<!--script src="hello.js"></script-->
        <script language="javascript">
            function Hello($scope, $http) {
    $http.get('http://localhost:8082/spring-mysql-rest-angular/mytaskrest/all').
        success(function(data) {
            $scope.task = data;
        });
}
            </script>
	</head>

	<body>
		<div ng-controller="Hello">
			<p>The ID is {{task}}</p>
			<p>The ID is {{task.taskName}}</p>
			<p>The content is {{task.taskStatus}}</p>
		</div>
		
		
		

	</body>
</html>
