'use strict'

angular.module('khronosApp')
  .directive 'timerPauseButton', [
    ->
      controller: [
        '$scope'
        ($scope) ->
          $scope.emitPause = -> $scope.$emit 'timer/pause'
      ]
      restrict: 'E'
      template: '''
        <div>
          <button class=btn ng-click=emitPause()>Pause</button>
        </div>
      '''
  ]
