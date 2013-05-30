'use strict'
#Main app file that drives our application
app = angular.module('App', ['ngResource', 'ui']).config ($routeProvider, $locationProvider) ->
    
    $routeProvider
      .when '/',
        templateUrl: '/home/index.ng'
        controller: 'MainCtrl'
      .when '/instagram/recent',
        templateUrl: '/instagram/recent.ng'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
    $locationProvider.html5Mode(false)

#Run on app initialization
app.run(($rootScope) ->
  $rootScope.$on('$routeChangeStart', (scope, newRoute) ->
    console.log(scope, newRoute);
  )
)

#Set on window
window.App = app

#Bootstrap the document and kick off the application
angular.element(document).ready ()->
  angular.bootstrap(document,['App'])