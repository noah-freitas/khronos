'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'khronosApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller) ->
    scope = {}
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should load', ->
    expect(true).toBe true
