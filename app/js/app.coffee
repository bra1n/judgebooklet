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
      when "fi" then "fi"
      when "fr" then "fr"
      when "de" then "de"
      when "es" then "es"
      when "it" then "it"
      else "en"
    $translateProvider
    .useStaticFilesLoader
        prefix: 'translations/lang-',
        suffix: '.json'
    .fallbackLanguage 'en'
    .preferredLanguage language
    .useSanitizeValueStrategy 'sanitizeParameters'
]