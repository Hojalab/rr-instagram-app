# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
class @InstagramController
  #App = angular.module('App', ['$strap.directives', 'ui.bootstrap'])
  
  InstagramController = ($scope, $http, $timeout) ->
     
    $scope.App = 
      title: 'R&R Instagram App'
      build : '0.0.2'
      description : 'Using Instagram\'s popular media API (http://instagram.com/developer/endpoints/media/#get_media_popular), this webapp shows popular images in a grid that refreshes automatically.'
      data : 
         timestamp: new Date()
         items: null
      selectedTile: null
      loading: true
      current_page: 'Recent'
      model : 
        filters : []
        query: null
      settings :
        debug : true
      #Handle initializing the application
      init: (args) ->
        setInterval(() -> 
          $scope.App.getRecent()
        30000)
        @getRecent()
        
      #Handle loggin to the console
      log: (args) ->
        console.log(args);
      #Handle making ajax calls to backend
      getData:(what, params) ->
        $scope.App.loading = true
        $http.get("/instagram/#{what}.json", {params: params}).success((data) ->
          $scope.App.loading = false
           
          $scope.App.data.timestamp = new Date()
          $scope.App.data.items = data
        );
      #Handle getting recent images
      getRecent:() ->
        @current_page = 'Recent'
        @getData('recent')
      #Handle getting popular images
      getPopular: () ->
        @current_page = 'Popular'
        @getData('popular')
      #Handle getting trending images
      getTrending: () ->
        @current_page = 'Trending'
        @getData('trending')
      #Handle searching instagram by username
      search: () ->
        @current_page = 'Search'
        @getData('search', {query: $scope.App.model.query})
      #Handle when tile is selected
      selectTile: (item) ->
        @log(item);
        @selectedTile = item;
      #Handle changing the image when refreshed
      changeImage: (el, image) ->
        angular.element(el).fadeOut('fast',(e) -> 
          angular.element(el).find('img.pic').attr('src', image)
          angular.element(el).fadeIn('fast')
        )
        
     #Handle setting on window
     window.App = $scope.App;
     
