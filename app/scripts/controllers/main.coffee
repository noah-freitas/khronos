'use strict'

angular.module('khronosApp')
  .controller 'MainCtrl', [
    '$scope'
    '$window'
    ($scope, $window) ->
      interval = {}
      savedSeconds = 0
      totalSeconds = 0

      $scope.$on 'timer/start', ->
        # Reset seconds state variables
        totalSeconds = 0
        savedSeconds = 0

        # Resume timer from 0
        $scope.$broadcast 'timer/update', seconds: 0
        $scope.$broadcast 'timer/resume'

      $scope.$on 'timer/pause', ->
        savedSeconds += totalSeconds
        totalSeconds = 0
        $window.clearInterval interval

      $scope.$on 'timer/resume', ->
        # UTC seconds when timer started.
        startSeconds = Math.floor Date.now() / 1000

        # Send timer/update event every second.
        interval = $window.setInterval ->
          # UTC seconds now.
          now = Math.floor Date.now() / 1000

          # Save total seconds
          totalSeconds = now - startSeconds

          $scope.$apply ->
            # Broadcast number of seconds timer has been going.
            $scope.$broadcast 'timer/update', seconds: totalSeconds + savedSeconds
        , 1000
  ]
