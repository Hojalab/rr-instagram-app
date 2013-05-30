'use strict'

describe 'Directive: testDirective', () ->
  beforeEach module 'App'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<test-directive></test-directive>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the testDirective directive'
