@promospt = angular.module('promospt', ['ngRoute'])

@promospt.config ($httpProvider) ->
    $httpProvider.
        defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')


@promospt.config ($routeProvider) ->
    $routeProvider
        .otherwise({
            templateUrl: '../templates/home.tpl',
            controller: 'HomeCtrl'
        })

@promospt.run(->
  console.log 'angular app running'
)

