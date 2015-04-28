angular.module('trainingportal.controllers', []).

controller('joinTeamController', function($scope,ergastAPIservice) {
	alert('1');
//	$scope.myData = {
//		modalShown : false
//	};
//	$scope.logClose = function() {
//		console.log('close!');
//	};
//	$scope.toggleModal = function(teamId) {
//		
//		$scope.myData.modalShown = !$scope.myData.modalShown;
//		
//		if($scope.myData.modalShown){
//			ergastAPIservice.joinTeamService(teamId).success(function(response) {
//				$scope.teamsJSON = response;
//			});
////			$scope.$broadcast('rebuild:me');
//		}
//	};
//	
//	   $scope.filteredTodos = []
//	  ,$scope.currentPage = 1
//	  ,$scope.numPerPage = 10
//	  ,$scope.maxSize = 5,
//	  $scope.teamsList=[];
//	
//	$scope.numPages = function () {
//	    return Math.ceil($scope.teamsList.length / $scope.numPerPage);
//	  };
//	  
//	  $scope.$watch('currentPage + numPerPage', function() {
//	    var begin = (($scope.currentPage - 1) * $scope.numPerPage)
//	    , end = begin + $scope.numPerPage;
//	    
//	    $scope.filteredTodos = $scope.teamsList.slice(begin, end);
//	  });
	
});