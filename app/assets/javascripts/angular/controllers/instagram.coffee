# Instagram Controller
# This controller holds the logic for Instagram API access and session management.
#
angular.module('App').controller 'InstagramCtrl', ['$scope', 'InstagramApi', ($scope, InstagramApi) ->
	#$scope.images = InstagramApi.query()
	Instagram:
		options: 
			client_id: '42af9189076c4ce7903df62e8afa2009'
			client_secret: '5690ec482a8f4f818daf898065ecc1c7'
			redirect_uri: 'http://jonniespratley.me:3000/instagram/callback'
			access_token: null
			auth_url: null
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
			Instagram.access_token = token
			console.log(token)

	window.Instagram = Instagram
	$scope.Instagram = Instagram
]