angular.module 'judgebooklet', [
  'ngRoute',
  'ngDraggable',
  'pascalprecht.translate'
  'judgebooklet.controller'
]
.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/index.html',
      controller: 'IndexCtrl'
    .otherwise redirectTo: '/'
]
.config ['$translateProvider', ($translateProvider) ->
# translations
    language = switch (navigator.language or navigator.userLanguage).toLowerCase().substr(0,2)
      when "fr" then "fr_FR"
      when "de" then "de_DE"
      when "es" then "es_ES"
      when "it" then "it_IT"
      else "en_GB"
    $translateProvider
    .useStaticFilesLoader
        prefix: '/translations/lang-',
        suffix: '.json'
    .fallbackLanguage 'en_GB'
    .preferredLanguage language
    .useSanitizeValueStrategy 'sanitizeParameters'
]