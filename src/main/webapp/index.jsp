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
            <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
            <!--script src="hello.js"></script-->
            <script language="javascript">
                function Hello($scope, $http) {
                    $http.get('http://localhost:8082/spring-mysql-rest-angular/mytaskrest/all').
                            success(function (data) {
                                $scope.task = data;
                            });
                }
                
                
                var app = angular.module("myShoppingList", []);
                app.controller("myCtrl", function($scope) {
                    $scope.task = ["Milk", "Bread", "Cheese"];
                    $scope.addItem = function () {
                        $scope.errortext = "";
                        if (!$scope.addMe) {return;}
                        if ($scope.task.indexOf($scope.addMe) == -1) {
                            $scope.task.push($scope.addMe);
                        } else {
                            $scope.errortext = "The item is already in your shopping list.";
                        }
                    }
                    $scope.removeItem = function (x) {
                        $scope.errortext = "";
                        $scope.task.splice(x, 1);
                    }
                });
            </script>
        </head>

        <body>
            <div ng-app="myShoppingList" ng-cloak ng-controller="Hello" class="w3-card-2 w3-margin" style="max-width:400px;">
                <header class="w3-container w3-light-grey w3-padding-hor-16">
                    <h3>My Task List</h3>
                </header>
                <ul class="w3-ul">
                    <li ng-repeat="x in task" class="w3-padding-hor-16">{{x.taskName}}<span ng-click="removeItem($index)" style="cursor:pointer;" class="w3-right w3-margin-right">×</span></li>
                </ul>
                <div class="w3-container w3-light-grey w3-padding-hor-16">
                    <div class="w3-row w3-margin-top">
                        <div class="w3-col s10">
                            <input placeholder="Add task name here" ng-model="addMe" class="w3-input w3-border w3-padding">
                        </div>
                        <div class="w3-col s2">
                            <button ng-click="addItem()" class="w3-btn w3-padding w3-green">Add</button>
                        </div>
                    </div>
                    <p class="w3-padding-left w3-text-red">{{errortext}}</p>
                </div>
            </div>



        </body>
    </html>
