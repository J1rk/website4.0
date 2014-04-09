'use strict';

angular.module('angAdminApp').controller('TopNavbarCtrl', function($scope, $location) {
  $scope.isActive = function(path) {
    return path === $location.path();
  };
});
