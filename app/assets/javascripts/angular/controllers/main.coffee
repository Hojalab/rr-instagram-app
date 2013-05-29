angular.module('App')
  .controller 'MainCtrl', ($rootScope, $scope, $http, $timeout, $compile) ->
    
    $scope.App = 
      title: 'R&R Instagram App'
      build : '0.0.2'
      description : 'Using Instagram\'s popular media API (http://instagram.com/developer/endpoints/media/#get_media_popular), this webapp shows popular images in a grid that refreshes automatically.'
      data : 
        timestamp: new Date()
        items: []
      selectedTile: null
      loading: false
      current_page: 'Recent'
      user: 
        access_token: null
      model : 
        filters : []
        query: null
      settings :
        debug : true
      timeoutid: null
      #Handle initializing the application
      init: (args) ->
        setInterval(() -> 
          $scope.App.getRecent()
        30000)
        
        @initIsotope()
        @getRecent()
        
      #Handle loggin to the console
      log: (args) ->
        console.log(args);
        
      #Handle making ajax calls to backend
      getData:(what, params, callback) ->
        self = @
        $scope.App.loading = true
        $http.get("/instagram/#{what}.json", {params: params}).success((data) ->
          $scope.App.loading = false
          $scope.App.data.timestamp = new Date()
          callback(data) if callback
          angular.forEach( data, (item, index) ->
            $scope.App.data.items = data if $scope.App.data.items.length is 0;
            
            #Append to array
            #$scope.App.data.items.push(item);
            
            #Extend each item into eachother
            $scope.App.data.items[index] = angular.extend(item, $scope.App.data.items[index]);
            
            console.log(item, index);
          )
          
         # $scope.App.changeAllImages()
          #$timeout($scope.App.changeAllImages, 1000);
        );
      #Handle getting recent images
      getRecent:() ->
        @current_page = 'Recent'
        @getData('recent', null, (data)->
            
        )
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
        @selectedTile = item
        
      #Handle hidding each image one by one
      changeAllImages: () ->
        self = @;
        angular.forEach( $scope.App.data.items, (item, index) ->
            self.addItem(item)
            console.log(item, index)
          )
        
      #Handle showing each image one by one 
      showAllImages: () ->
        
           
      #Handle initializing isotope plugin
      initIsotope: ->
        
        angular.element('#tile-grid').isotope({
          itemSelector: '.item'
          layoutMode: 'fitRows'
        });  
        
        
      #Handle adding a image to the grid
      addItem: (item) ->
        html = angular.element('#tmpl_banjo_tile').clone()
        
        $newItems = angular.element(html)
        $newItems.removeClass('hidden')
        angular.element('#tile-grid').append($newItems).isotope('addItems', $newItems)
        angular.element('#tile-grid').isotope('reloadItems')
        @initIsotope()
        
        
      #Handle changing the image when refreshed
      changeImage: (el, image) ->
        element = angular.element("#tile_#{el}").find('img.pic')
        element.fadeOut('slow',() ->
          element.attr('src', image)
          element.fadeIn('slow')
        )
      #============ INSTAGRAM API ==============
      Instagram:
        current_user: null
        options: 
          client_id: '42af9189076c4ce7903df62e8afa2009'
          client_secret: '5690ec482a8f4f818daf898065ecc1c7'
          redirect_uri: 'http://jonniespratley.me:3000/instagram/callback'
          code: null
          access_token: null
          auth_url: null
          cookies: true
          cookie: null
        Api:
          url: 'https://api.instagram.com/v1'
          data: null
          #Utility method for making API calls to Instagram
          call: (resource, params, callback) ->
            $scope.App.loading = true
            #Get users access token from session storage
            $scope.App.Instagram.getAccessToken()
            #/users/1574083/?access_token=49636275.f59def8.a495d726f5a94727b5cf4bb8caddc81a
            options = 
              params:
                callback: 'JSON_CALLBACK'
                access_token: $scope.App.Instagram.options.access_token
            options = angular.extend(options, params)    
            $http.jsonp("https://api.instagram.com/v1#{resource}", options).success((data) ->
                $scope.App.loading = false
                callback(data) if callback
                console.log(data)
                $scope.App.Instagram.Api.data = data
              )
          
        #Handle initializing Instagram API
        init: (options) ->
          $scope.App.Instagram.getAccessToken()
          $scope.App.Instagram.options = angular.extend(options, @options)
          
        #Handle authenticate a user
        authorize: () ->
          url = "https://instagram.com/oauth/authorize/?client_id=#{$scope.App.Instagram.options.client_id}&redirect_uri=#{$scope.App.Instagram.options.redirect_uri}&response_type=token"
          window.location = url
          console.log(url)
  
        #Handle getting the access_token from the url.
        checkAccessToken: () ->
          hash_value = window.location.hash.split('=') if window.location.hash
          @saveAccessToken(hash_value[1]) if hash_value
  
        #Handle saving access token to session storage.
        saveAccessToken: (token) ->
          window.sessionStorage.setItem('App.Instagram.options.access_token', token) if window.sessionStorage
          $scope.App.Instagram.options.access_token = token
          console.log(token)
          window.location = '/instagram/user'
  
        #Handle getting the access token from session storage.
        getAccessToken: () ->
          token = window.sessionStorage.getItem('App.Instagram.options.access_token') if window.sessionStorage
          $scope.App.Instagram.options.access_token = token if token

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
             $scope.App.Instagram.Api.call('/users/self/media/recent', {cache: true}, (data) ->
              $scope.App.Instagram.current_user = data.data[0].user 
              $scope.App.Instagram.User.data.feed = data
              $scope.App.Instagram.User.getInfo() 
             ) 
          #See the authenticated user's list of media they've liked.
          getLiked: () ->
            
          #Search for a user by name.
          search: (q) ->
            
            
    $rootScope.App = $scope.App
    window.App = $scope.App