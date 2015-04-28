<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  
  <head  >
   
    <title></title>
    <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/foundation.css" />
    <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/fonts/stylesheets/social_foundicons.css" />
	<link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/fonts/stylesheets/general_foundicons.css" />
	
   
    <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/select2.css" />
    <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/dataTables.foundation.css" />
    <link rel="stylesheet" href="/nationalteamAngularJS/css/default.css" />
    <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/national_team.css" />

	 <link rel="stylesheet" type="text/css" href="/nationalteamAngularJS/css/ng-modal.css" media="all" />
	 <link rel="stylesheet" type="text/css" href="/nationalteamAngularJS/css/ng-scrollbar.min.css" media="all" />
	<!--[if lt IE 8]>
   <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/fonts/stylesheets/social_foundicons_ie7.css" />
     <link rel="stylesheet" href="<s:property value="cmsAssetsURLNatlTeam" />/css/fonts/stylesheets/general_foundicons_ie7.css" />
  <![endif]-->
  
  
  
  </head>
  <body ng-app="F1FeederApp">
	
	
  <nav data-topbar="" class="top-bar hide">

<ul class="title-area">
  <!-- Title Area -->
  <li class="name">

  </li>
  <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
  <li class="toggle-topbar menu-icon"><a href="">Menu</a></li>
</ul>
</nav>

  
  <div id="ttt1"></div>
  <!-- HEADER VIEW -->
  <div data-ng-controller="headerController">
<div data-ng-include="'../nationalteamAngularJS/app/partials/header.html'">

</div></div>

 <!-- HEADER VIEW  END -->
 
  
  <div class="row">
   <div data-ng-controller="nationalTeamDataController">
  <div data-ng-include="'../nationalteamAngularJS/app/partials/main.html'"></div></div>
  </div>

<hr>
  <div data-ng-controller="footerController">
<div data-ng-include="'../nationalteamAngularJS/app/partials/footer.html'">

</div></div>
  
  </body>
  <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=llsetools"></script>
  <script src="/nationalteamAngularJS/app/js/lib/angular.min.js"></script>
  <script src="/nationalteamAngularJS/app/js/lib/angular-route.min.js"></script>
    <script src="/nationalteamAngularJS/app/js/lib/angular-sanitize.min.js"></script>
    <script src="/nationalteamAngularJS/app/js/lib/ng-modal.min.js"></script>
    <script src="/nationalteamAngularJS/app/js/lib/ng-scrollbar.min.js"></script>
  <script src="/nationalteamAngularJS/app/js/app.js"></script>
  <script src="/nationalteamAngularJS/app/js/services.js"></script>
  <script src="/nationalteamAngularJS/app/js/controllers.js"></script>
  <script src="/nationalteamAngularJS/javascript/jquery-min.js"></script>
    <script src="/nationalteamAngularJS/javascript/charts.js"></script>
  <script src="/nationalteamAngularJS/javascript/national_team.js"></script>
  
  <script src="/nationalteamAngularJS/app/js/lib/select.min.js"></script>
  <link rel="stylesheet" href="/nationalteamAngularJS/css/select.min.css">

  <!-- Select2 theme -->
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/select2/3.4.5/select2.css">

  <!--
    Selectize theme
    Less versions are available at https://github.com/brianreavis/selectize.js/tree/master/dist/less
  -->
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.default.css">
  
  
</html>
