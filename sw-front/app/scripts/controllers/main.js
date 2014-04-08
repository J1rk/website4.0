'use strict';

angular.module('angAdminApp')
  .controller('MainCtrl', function ($scope, $resource) {
    $scope.articles = $resource('/api/admin/articles').query();
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
