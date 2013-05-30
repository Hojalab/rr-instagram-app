###
This is a implementation of the Instagram API using Angular.js Resource.
###
angular.module('App').factory 'InstagramApi', ['$resource', ($resource) ->
  $resource '/instagram/:id', id: '@id'
]