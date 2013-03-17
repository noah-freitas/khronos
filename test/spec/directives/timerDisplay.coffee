'use strict'

describe 'Directive: timerDisplay', ->
  element = {}
  beforeEach module 'khronosApp'
  beforeEach inject ($rootScope, $compile) ->
    template = '<timer-display></timer-display>'
    element = $compile(template)($rootScope.$new())
    $rootScope.$digest()

  it 'should start displaying 00:00:00', ->
    expect(element.find('div').text()).toBe '00:00:00'

  it 'should display the seconds it is sent', inject ($rootScope) ->
    # 0 time
    $rootScope.$broadcast 'timer/update', seconds: 0
    $rootScope.$digest()
    expect(element.find('div').text()).toBe '00:00:00'

    # Just seconds
    $rootScope.$broadcast 'timer/update', seconds: 10
    $rootScope.$digest()
    expect(element.find('div').text()).toBe '00:00:10'

    # Seconds and minutes
    $rootScope.$broadcast 'timer/update', seconds: 75
    $rootScope.$digest()
    expect(element.find('div').text()).toBe '00:01:15'

    # Hours, seconds, and minutes
    $rootScope.$broadcast 'timer/update', seconds: 3691
    $rootScope.$digest()
    expect(element.find('div').text()).toBe '01:01:31'
