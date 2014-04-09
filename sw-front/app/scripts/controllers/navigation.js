'use strict';

angular.module('angAdminApp').controller('NavigationCtrl', function($scope, $location) {
  $scope.isActive = function(path) {
    return path === $location.path();
  };
});
