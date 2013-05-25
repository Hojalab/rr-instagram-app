App = angular.module('App', ['$strap.directives'])

AppCtrl = ($scope, $http, $timeout) -> 
	$scope.App = 
		title: 'R&R Instagram App'
		build : '0.0.1'
		description : 'This is an example app'
		data : null
		selectedTile: null
		model : 
			filters : []
		settings :
			debug : true
		init: (args) ->
		  console.log(args);
		log: (args) ->
		  console.log(args);
		getRecent:() ->
		  # body...
		getPopular: () ->
		  # body...
		search: () ->
		  #body...
		selectTile: (item) ->
		  @log(item);
		  @selectedTile = item;

		

		
		

		

		

		