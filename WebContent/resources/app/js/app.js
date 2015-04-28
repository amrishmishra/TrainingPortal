var app = angular.module('trainingportal', [
  'trainingportal.services',
  'trainingportal.controllers',
  'ngRoute',
]).
config(['$routeProvider', function($routeProvider) {
    $routeProvider.
	when("/signUp/", {templateUrl: "../app/partials/main.html", controller: "joinTeamController"}).
	otherwise({redirectTo: "/signUp/"});
}]);

app.filter('propsFilter', function() {
	  return function(items, props) {
	    var out = [];

	    if (angular.isArray(items)) {
	      items.forEach(function(item) {
	        var itemMatches = false;

	        var keys = Object.keys(props);
	        for (var i = 0; i < keys.length; i++) {
	          var prop = keys[i];
	          var text = props[prop].toLowerCase();
	          if (item[prop].toString().toLowerCase().indexOf(text) !== -1) {
	            itemMatches = true;
	            break;
	          }
	        }

	        if (itemMatches) {
	          out.push(item);
	        }
	      });
	    } else {
	      // Let the output be the input untouched
	      out = items;
	    }

	    return out;
	  };
	});