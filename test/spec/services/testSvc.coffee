'use strict'

describe 'Service: testSvc', () ->

  # load the service's module
  beforeEach module 'yoappApp'

  # instantiate service
  testSvc = {}
  beforeEach inject (_testSvc_) ->
    testSvc = _testSvc_

  it 'should do something', () ->
    expect(!!testSvc).toBe true;
