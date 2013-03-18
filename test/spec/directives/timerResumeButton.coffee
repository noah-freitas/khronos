'use strict'

describe 'Directive: timerResumeButton', () ->
  element = {}
  beforeEach module 'khronosApp'
  beforeEach inject ($rootScope, $compile) ->
    template = angular.element '<timer-resume-button></timer-resume-button>'
    element = $compile(template)($rootScope.$new())
    $rootScope.$digest()

  it 'should $emit timer/resume when it\'s button is clicked', inject ($rootScope) ->
    done = -> expect(false).toBe true
    $rootScope.$on 'timer/resume', ->
      done = -> expect(true).toBe true
    element.find('button').triggerHandler 'click'
    $rootScope.$digest()
    done()
