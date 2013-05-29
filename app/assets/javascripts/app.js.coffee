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

routesConfigFn = ($routeProvider, $locationProvider)->

  $routeProvider.when('/search',
      {templateUrl: 'searchView/searchView.html'})
  
  $routeProvider.when('/details/:id',
      {templateUrl: 'detailsView/detailsView.html'})

  $routeProvider.when('/instagram/trending',
      {templateUrl: '/instagram/trending.html'})
  $routeProvider.when('/instagram/recent',
      {templateUrl: '/instagram/recent.html'})
  $routeProvider.when('/instagram/popular',
      {templateUrl: '/instagram/popular.html'})


  $routeProvider.otherwise({redirectTo: '/'})
  $locationProvider.html5Mode(false)

### ###########################################################################
# Create and bootstrap app module
### ###########################################################################

app = angular.module('App', mods)


app.config ['$routeProvider', '$locationProvider', routesConfigFn]

#m.config (['common.services.envProvider', (envProvider)->

  # Allows the environment provider to run whatever config block it wants.
#  if envProvider.appConfig?
#    envProvider.appConfig()
#])

#m.run (['common.services.env', (env)->

  # Allows the environment service to run whatever app run block it wants.
#  if env.appRun?
#    env.appRun()
#])


app.run(($rootScope) ->
  $rootScope.$on('$routeChangeStart', (scope, newRoute) ->
    console.log(scope, newRoute);
  )
)


window.App = app
angular.element(document).ready ()->
  angular.bootstrap(document,['App'])