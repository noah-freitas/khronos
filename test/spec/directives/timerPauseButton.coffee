'use strict'

describe 'Directive: timerPauseButton', ->
  element = {}
  beforeEach module 'khronosApp'
  beforeEach inject ($rootScope, $compile) ->
    template = angular.element '<timer-pause-button></timer-pause-button>'
    element = $compile(template)($rootScope.$new())
    $rootScope.$digest()

  it 'should $emit timer/pause when it\'s button is clicked', inject ($rootScope) ->
    done = -> expect(false).toBe true
    $rootScope.$on 'timer/pause', ->
      done = -> expect(true).toBe true
    element.find('button').triggerHandler 'click'
    $rootScope.$digest()
    done()
