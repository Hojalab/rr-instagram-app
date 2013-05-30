'use strict'

describe 'Filter: testFilter', () ->

  # load the filter's module
  beforeEach module 'App'

  # initialize a new instance of the filter before each test
  testFilter = {}
  beforeEach inject ($filter) ->
    testFilter = $filter 'testFilter'

  it 'should return the input prefixed with "testFilter filter:"', () ->
    text = 'angularjs'
    expect(testFilter text).toBe ('testFilter filter: ' + text);
