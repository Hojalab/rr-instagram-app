###
This is a implementation of the Instagram API using Angular.js Resource.
###
App.factory 'InstagramApi', ['$resource', ($resource) ->
  $resource '/instagram/:id', id: '@id'
]