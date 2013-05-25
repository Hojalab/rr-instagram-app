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

function AppCtrl($scope, $http){
  $scope.App = {
    build: '0.0.1',
    title: 'App',
    description: 'This is an example app',
    settings: {
      debug: true
    },
    init: function(args){
    	this.getPopular();
      console.log(this.title, args, this, $scope);
    },
    //https://api.instagram.com/v1/media/popular?client_id=42af9189076c4ce7903df62e8afa2009
    getPopular:function(){
     $http.get('/popular.json').success(function(data){
     	$scope.App.data = data;
     	console.log(data);
     });
    }
  };
}