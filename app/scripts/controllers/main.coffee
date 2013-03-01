'use strict'

angular.module('khronosApp')
  .controller 'MainCtrl', ['$scope', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Testacular'
    ]
  ]
