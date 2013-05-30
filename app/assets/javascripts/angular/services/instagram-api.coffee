###
This is a implementation of the Instagram API using Angular.js Resource.



##Users
  GET/users/user-id - Get basic information about a user.
  GET/users/self/feed - See the authenticated user's feed.
  GET/users/user-id/media/recent - Get the most recent media published by a user.
  GET/users/self/media/liked - See the authenticated user's list of liked media.
  GET/users/search - Search for a user by name.

##Media
  * GET/media/media-id - Get information about a media object.
  * GET/media/popularGet a list of currently popular media.
  * GET/media/search - Search for media in a given area. The default time span is set to 5 days. The time span must not exceed 7 days. Defaults time stamps cover the last 5 days.
    PARAMETERS
    LAT Latitude of the center search coordinate. If used, lng is required.
    MIN_TIMESTAMP A unix timestamp. All media returned will be taken later than this timestamp.
    LNG Longitude of the center search coordinate. If used, lat is required.
    MAX_TIMESTAMP A unix timestamp. All media returned will be taken earlier than this timestamp.
    DISTANCE  Default is 1km (distance=1000), max distance is 5km.

##Comments

##Likes

##Locations
  GET/locations/location-id - Get information about a location.
  GET/locations/location-id/media/recent - Get a list of media objects from a given location.
  GET/locations/search - Search for a location by geographic coordinate.


##Tags
  * /tags/:tagname
  * /tags/:tagname/media/recent
  * /tags/search?q=

###
angular.module('App').factory 'InstagramApi', [ '$http', '$q', '$cookieStore', '$location', '$route', ($http, $q, $cookieStore, $location, $route) ->
  
  InstagramApi = 
    options: 
      client_id: '42af9189076c4ce7903df62e8afa2009'
      client_secret: '5690ec482a8f4f818daf898065ecc1c7'
      redirect_uri: 'http://jonniespratley.me:3000/instagram/callback'
      access_token: null
      auth_url: null
      cookies: true
      cookie: null
    base: 'https://api.instagram.com/v1'
    data: null
    
    #Utility method for making API calls to Instagram
    call: (resource, params, callback) ->
      options = 
        params:
          callback: 'JSON_CALLBACK'
          access_token: @options.access_token
          
      options = angular.extend(options, params)
      deferred = $q.defer()
      data = null
      
      $http.jsonp("https://api.instagram.com/v1#{resource}", options).success((data) ->
          console.log(data)
          callback(data) if callback
          data = data
        )
      return data

    #Handle initializing Instagram API
    init: (client_id, redirect_uri) ->
      @options.client_id = client_id
      @options.redirect_uri = redirect_uri
      @getAccessToken()
      return @
      
    #Handle logging to console
    log: (obj) ->
      console.log(obj)
    
    #Handle authenticate a user
    authorize: () ->
      url = "https://instagram.com/oauth/authorize/?client_id=#{@options.client_id}&redirect_uri=#{@options.redirect_uri}&response_type=token"
      @log(url)
      window.location = url

    #Handle getting the access_token from the url.
    checkAccessToken: () ->
      hash_value = window.location.hash.split('=') if window.location.hash
      @saveAccessToken(hash_value[1]) if hash_value[1]

    #Handle saving access token to session storage.
    saveAccessToken: (token) ->
      $cookieStore.put('Instagram.options.access_token', token)
      @options.access_token = token
      console.log(token)
      window.location = '/instagram/user'

    #Handle getting the access token from session storage.
    getAccessToken: () ->
      token = $cookieStore.get('Instagram.options.access_token')
      @options.access_token = token if token

    User:
      data: 
        info: null
        feed: null
        recent: null
        liked: null
        
      #Get basic information about a user.
      getInfo: () ->
         $scope.App.Instagram.Api.call("/users/#{$scope.App.Instagram.current_user.id}", {cache: true}, (data) ->
          $scope.App.Instagram.User.data.info = data.data 
         )
         
      #See the authenticated user's feed.
      getFeed: () ->
        $scope.App.Instagram.Api.call('/users/self/feed', {cache: true}, (data) ->
          $scope.App.Instagram.User.data.feed = data.data
         ) 
         
      #Get the most recent media published by a user.
      getRecent: () ->
         InstagramApi.call('/users/self/media/recent', {cache: true}, (data) ->
          InstagramApi.current_user = data.data[0].user 
          InstagramApi.User.data.feed = data
          InstagramApi.User.getInfo() 
         ) 
         
      #See the authenticated user's list of media they've liked.
      getLiked: () ->
        
        
      #Search for a user by name.
      search: (q) ->
          
]