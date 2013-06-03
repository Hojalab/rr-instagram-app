helloWorld: () ->
  return 'Hello World'
  
  
describe "Coffeescript Jasmine Spec", ->
  it "should say hello world", ->
    expect(helloWorld()).toContain('World')

