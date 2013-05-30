'use strict'
#Main app file that drives our application
### ###########################################################################
# Wire modules together
### ###########################################################################

mods = [
  'ngResource',
  'ui'
]

### ###########################################################################
# Declare routes 
### ###########################################################################



### ###########################################################################
# Create and bootstrap app module
### ###########################################################################

app = angular.module('App', mods)








app.config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

    $locationProvider.html5Mode(false)


app.run(($rootScope) ->
  $rootScope.$on('$routeChangeStart', (scope, newRoute) ->
    console.log(scope, newRoute);
  )
)


window.App = app
angular.element(document).ready ()->
  angular.bootstrap(document,['App'])