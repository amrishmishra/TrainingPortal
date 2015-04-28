angular.module('trainingportal.services', [])
  .factory('ergastAPIservice', function($http) {

    var ergastAPI = {};

    ergastAPI.getNationalTeamData = function() {
      return $http({
        url: '/service/api/nationalTeamData/?frPageURL=http://dev5pages.lightthenight.org/2014/pfizer'
      });
    }
    
    return ergastAPI;
  });