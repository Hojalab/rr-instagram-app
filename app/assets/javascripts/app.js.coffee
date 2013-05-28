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

routesConfigFn = ($routeProvider)->

  $routeProvider.when('/search',
      {templateUrl: 'searchView/searchView.html'})
  $routeProvider.when('/details/:id',
      {templateUrl: 'detailsView/detailsView.html'})

  $routeProvider.otherwise({redirectTo: '/'})

### ###########################################################################
# Create and bootstrap app module
### ###########################################################################

m = angular.module('App', mods)

m.config ['$routeProvider', routesConfigFn]

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

window.App = m
angular.element(document).ready ()->
  angular.bootstrap(document,['App'])