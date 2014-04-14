'use strict';

angular.module('angAdminApp')
  .controller('ArticlesCtrl', function ($scope, $resource) {
    $scope.articles = $resource('/api/admin/articles').query();
  });
