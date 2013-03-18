'use strict'

angular.module('khronosApp')
  .directive 'timerPlayButton', [
    ->
      template: '<div></div>'
      restrict: 'E'
      link: (scope, element, attrs) ->
        element.text 'this is the timerPlayButton directive'
  ]
