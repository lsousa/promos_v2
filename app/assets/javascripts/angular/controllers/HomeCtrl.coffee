@promospt.controller 'HomeCtrl', ['$scope','$http', ($scope, $http) ->
    $scope.deals = [];

    $http.get('/api/v1/deals.json').success( (data ) =>
        $scope.deals = data;
    )


]