'use strict';

angular.module('khronosApp')
  .directive 'timerDisplay', [
    ->
      controller: [
        '$scope'
        ($scope) ->
          $scope.seconds = '00'
          $scope.minutes = '00'
          $scope.hours = '00'
          $scope.$on 'timer/update', (e, data) ->
            seconds = data.seconds
            # hours
            $scope.hours = Math.floor seconds / 3600
            $scope.hours = '0' + $scope.hours if $scope.hours.toString().length is 1
            seconds = seconds % 3600

            # minutes
            $scope.minutes = Math.floor seconds / 60
            $scope.minutes = '0' + $scope.minutes if $scope.minutes.toString().length is 1
            seconds = seconds % 60

            # seconds
            $scope.seconds = seconds
            $scope.seconds = '0' + $scope.seconds if $scope.seconds.toString().length is 1
      ]
      restrict: 'E'
      template: '<div>{{hours}}:{{minutes}}:{{seconds}}</div>'
  ]
