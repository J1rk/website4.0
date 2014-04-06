'use strict';

angular.module('angAdminApp', ['ngResource', 'ngRoute'])
  .config(['$routeProvider', function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'assets/app/views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }]);
