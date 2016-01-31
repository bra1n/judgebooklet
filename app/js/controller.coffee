angular.module 'judgebooklet.controller', []
.controller 'IndexCtrl', ['$scope', ($scope) ->
  $scope.pageNumbers = [0..7]
  $scope.pageList = [
    "turn"
    "layers"
    "abilities"
    "shortcuts"
    "penalties"
    "jar"
    "information"
    "announcements"
    "gpe"
    "competitive"
    "competitive2"
    "sealed"
    "2hg"
    "commander"
    "reviews"
    "cheating"
  ]
  $scope.pages = ["turn", "layers"]
  $scope.lastDrag = false
  $scope.pageDrop = (data, page) ->
    unless $scope.lastDrag is false
      $scope.pages[$scope.lastDrag] = $scope.pages[page]
      $scope.lastDrag = false
    $scope.pages[page] = data
  $scope.pageDrag = (data, page) ->
    $scope.pages[page] = ""
    $scope.lastDrag = page
  $scope.pageRemove = (page) ->
    $scope.pages[page] = "";
]