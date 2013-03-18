'use strict'

angular.module('khronosApp')
  .directive 'timerStartButton', [
    ->
      controller: [
        '$scope'
        ($scope) ->
          $scope.emitStart = ->
            $scope.$emit 'timer/start'
      ]
      restrict: 'E'
      template: '''
        <div>
          <button ng-click=emitStart()>Start</button>
        </div>
      '''
  ]
