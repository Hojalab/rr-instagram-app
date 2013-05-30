'use strict';

angular.module('App')
  .filter 'testFilter', () ->
    (input) ->
      'testFilter filter: ' + input
