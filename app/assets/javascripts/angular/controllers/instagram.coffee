# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
class @InstagramController
  #App = angular.module('App', ['$strap.directives', 'ui.bootstrap'])
  
  InstagramController = ($scope, $http, $timeout) ->
     
    $scope.App = 
      title: 'R&R Instagram App'
      build : '0.0.1'
      description : 'This is an example app'
      data : null
      selectedTile: null
      loading: true
      current_page: 'Recent'
      model : 
        filters : []
      settings :
        debug : true
      init: (args) ->
        @getRecent();
      log: (args) ->
        console.log(args);
      getData:(what) ->
        $scope.App.loading = true
        $http.get("/instagram/#{what}.json").success((data) ->
          $scope.App.loading = false 
          $scope.App.data = data
        );
      getRecent:() ->
        @current_page = 'Recent'
        @getData('recent')
      getPopular: () ->
        @current_page = 'Popular'
        @getData('popular')
      getTrending: () ->
        @current_page = 'Trending'
        @getData('trending')
      search: () ->
        #body...
      selectTile: (item) ->
        @log(item);
        @selectedTile = item;
     
     window.App = $scope.App;
