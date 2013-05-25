// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

/**
 * App
 */
/**
 * App
 */
var App = angular.module('App', []);

function AppCtrl($scope, $http, $timeout) {

	/**
	 * Application Object.
	 * This object holds methods and proporties for this app.
	 */
	$scope.filter = '';
	$scope.search = '';
	$scope.App = {
		build : '0.0.1',
		title : 'App',
		description : 'This is an example app',
		model : {
			filters : []
		},
		data : null,
		settings : {
			debug : true
		},
		selectedTile: null,
		/**
		 * Handle initializing the application.
		 */
		init : function(args) {
			this.getPopular();
			
			
			console.log(this.title, args, this, $scope);
			
			$timeout(function(){
				console.log('time');
			}, 3000);
			
		},
		/**
		 * Handle logging output to the console.
		 */
		log: function(obj){
			if(this.settings.debug){
				console.log(obj);
			}
		},
		/**
		 * Handle getting the popular data from Instagram.
		 * https://api.instagram.com/v1/media/popular?client_id=42af9189076c4ce7903df62e8afa2009
		 */
		getPopular : function() {
			this.log('getPopular');
			$http.get('/data/popular.json').success(function(results) {
				$scope.App.data = results.data;
				console.log(results);
			});
		},
		/**
		 * Handle getting the trending images from Instagram.
		 */
		getTrending: function(){
			this.log('getTrending');
		},
		/**
		 * Handle getting the recent images from Instagram.
		 */
		getRecent: function(){
			this.log('getRecent');
		},
		/**
		 * Handle searching images from Instagram.
		 */
		search: function(){
			this.log('search', $scope.search);
		},
		selectTile: function(obj){
			this.selectedTile = obj;
			this.log('selectTile', obj);
		}
		
	};

	window.App = $scope.App;
}