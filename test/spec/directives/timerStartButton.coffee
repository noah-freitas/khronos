'use strict'

describe 'Directive: timerStartButton', () ->
  # Private variables
  element = {}

  # Setup
  beforeEach module 'khronosApp'
  beforeEach inject ($rootScope, $compile) ->
    template = angular.element '<timer-start-button></timer-start-button>'
    element = $compile(template)($rootScope.$new())
    $rootScope.$digest()

  it 'should $emit timer/start when it\'s button is clicked', inject ($rootScope) ->
    done = -> expect(false).toBe true
    $rootScope.$on 'timer/start', ->
      done = -> expect(true).toBe true
    element.find('button').triggerHandler 'click'
    $rootScope.$digest()
    done()
