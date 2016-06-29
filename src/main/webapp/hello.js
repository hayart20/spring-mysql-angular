function Hello($scope, $http) {
    $http.get('http://localhost:8082/spring-mysql-rest-angular/mytaskrest/all').
        success(function(data) {
            $scope.task = data;
        });
}