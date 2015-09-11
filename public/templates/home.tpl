<div ng-controller="HomeCtrl as home">
    <div ng-repeat="deal in deals" class="row">
        <h2>{{deal.title}}</h2>
        <p>{{deal.description}}</p>
    </div>
</div>