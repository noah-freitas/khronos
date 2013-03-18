'use strict'

angular.module('khronosApp')
  .controller 'MainCtrl', [
    '$scope'
    '$window'
    ($scope, $window) ->
      interval = {}

      $scope.$on 'timer/start', ->
        # UTC seconds when timer started.
        startSeconds = Math.floor Date.now() / 1000

        # Send timer/update event every second.
        interval = $window.setInterval ->
          # UTC seconds now.
          now = Math.floor Date.now() / 1000
          $scope.$apply ->
            # Broadcast number of seconds timer has been going.
            $scope.$broadcast 'timer/update', seconds: (now - startSeconds)
        , 1000

      $scope.$on 'timer/pause', ->
        $window.clearInterval interval
  ]
