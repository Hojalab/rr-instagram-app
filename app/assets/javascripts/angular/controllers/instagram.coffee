# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/    
class @InstagramController
  #App = angular.module('App', ['$strap.directives', 'ui.bootstrap'])
  
  InstagramController = ($rootScope, $scope, $http, $timeout) ->
    $scope.App = $rootScope.App
    
      #============ INSTAGRAM API ==============
      Instagram:
        client_id: '42af9189076c4ce7903df62e8afa2009'
        client_secret: '5690ec482a8f4f818daf898065ecc1c7'
        redirect_uri: 'http://jonniespratley.me:3000/instagram/callback'
        code: null
        access_token: null
        auth_url: null
        options: 
          cookies: true
          cookie: null
        
        #Handle initializing Instagram API
        init: (client_id, redirect_uri) ->
          $scope.App.Instagram.client_id = client_id
          $scope.App.Instagram.redirect_uri = redirect_uri
      
        #Handle authenticate a user
        authorize: () ->
          url = "https://instagram.com/oauth/authorize/?client_id=#{$scope.App.Instagram.client_id}&redirect_uri=#{$scope.App.Instagram.redirect_uri}&response_type=token"
          window.location = url
          console.log(url)
        
        #Handle getting the access_token from the url
        checkAccessToken: () ->
          hash_value = window.location.hash.split('=') if window.location.hash
          @saveAccessToken(hash_value[1]) if hash_value
        
        #Handle saving access token to storage
        saveAccessToken: (token) ->
          $scope.App.Instagram.access_token = token
          console.log(token)
        
        
     #Handle setting on rootScope
     $rootScope.App = $scope.App
     #Handle setting on window
     window.App = $scope.App
     
