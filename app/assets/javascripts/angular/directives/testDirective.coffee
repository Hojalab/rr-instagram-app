'use strict';

angular.module('App')
  .directive('testDirective', () ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the testDirective directive'
  )
