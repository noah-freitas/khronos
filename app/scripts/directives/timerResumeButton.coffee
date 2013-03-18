'use strict'

angular.module('khronosApp')
  .directive 'timerResumeButton', [
    ->
      controller: [
        '$scope'
        ($scope) ->
          $scope.emitResume = -> $scope.$emit 'timer/resume'
      ]
      restrict: 'E'
      template: '''
        <button class=btn ng-click=emitResume()>Resume</button>
      '''
  ]
