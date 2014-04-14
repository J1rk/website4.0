'use strict';

angular.module('angAdminApp').directive('topNavbar', function() {
  return {
    restrict: 'A',
    templateUrl: 'views/top_navbar.html',
    controller: 'NavigationCtrl'
  };
});
