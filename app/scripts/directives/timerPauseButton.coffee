'use strict'

angular.module('khronosApp')
  .directive 'timerPauseButton', [
    ->
      controller: [
        '$scope'
        ($scope) ->
          true
      ]
      restrict: 'E'
      template: '<div></div>'
  ]
