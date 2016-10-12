<!DOCTYPE html>
<html>
<head>
  <title>WWYDH Java ATL Version</title>
  <link rel="stylesheet" media="all" href="stylesheets/custom.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/project_leaders.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/projects.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/sessions.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/static_pages.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/support_tickets.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/users.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/vacants.css" data-turbolinks-track="true" />
  <link rel="stylesheet" media="all" href="stylesheets/application.css" data-turbolinks-track="true" />

  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>		<!-- Google Maps API -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>	<!-- Google CDN for jQuery -->
  <script>
  var map;
  var cityOverlay;

  function initialize() {
    var mapProp = {
      center:new google.maps.LatLng(39.335000,-76.622000),
      zoom:11,
      mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    map=new google.maps.Map(document.getElementById("map-container"),mapProp);	
  }
  google.maps.event.addDomListener(window, 'load', initialize);

  </script>

</head>
<body class="full">

  <div id ="custom-navbar" class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">
        <img src="images/icongrey.png" alt="Icongrey" />
      </a>      
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse navbar-menubuilder">

      <ul class="nav navbar-nav">
        <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="https://quiet-dusk-47838.herokuapp.com/about"><i class="fa fa-info-circle"></i> About</a></li>
        <li><a href="https://quiet-dusk-47838.herokuapp.com/support_tickets/new"><i class="fa fa-paper-plane"></i> Contact</a></li>
        <li><a href="https://quiet-dusk-47838.herokuapp.com/vacants"><i class="fa fa-building-o"></i> Locations</a></li>
        <li><a href="https://quiet-dusk-47838.herokuapp.com/projects"><i class="fa fa-map-o"></i> Projects</a></li>
        <li><a href="https://quiet-dusk-47838.herokuapp.com/users"><i class="fa fa-users"></i> Users</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
          <li><a href="https://quiet-dusk-47838.herokuapp.com/login">Log In</a></li>
          <li><a href="https://quiet-dusk-47838.herokuapp.com/users/new">Sign Up</a></li>
      </ul>

    </div>
  </div>
</div>


  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3 text-center">
      </div>
    </div>

      
<div class="text-center" style="background: transparent;">
  <img style="text-align: center; padding: 0px;" class="img-responsive center-block" src="images/whitelogo.png" alt="Whitelogo" />
</div>

<br>
<br>

<!-- Begin pills/tabs -->
<div class="row">

  <div class="col-sm-6 centered-pills">
    <h2 class="text-center" style="color: white;">
      Search for Projects and Locations
    </h2>
    <br>
    <ul class="nav nav-pills">
      <li class="active">
        <a data-toggle="pill" href="index.html#home" style="color: white;">
          <h4>Locations</h4>
        </a>
      </li>
      <li>
        <a data-toggle="pill" href="index.html#menu1" style="color: white;">
          <h4>Projects</h4>
        </a>
      </li>
    </ul>

    <!-- <br> -->

    <div class="tab-content text-center">
      <div id="home" class="tab-pane fade in active">
        <div class="container-fluid">
  <div class="row">
    <!-- <div class="col-sm-4 col-sm-offset-4"> -->

    <div class="col-sm-12">

      <br>

      <form id="search-form" action="https://quiet-dusk-47838.herokuapp.com/vacants" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
        <input type="text" name="full_address" id="full_address" class="form-control" placeholder="Address" /><br>
        <input type="text" name="neighborhood" id="neighborhood" class="form-control" placeholder="Neighborhood" /><br>
        <input type="text" name="police_district" id="police_district" class="form-control" placeholder="PoliceDistrict" /><br>
        <input type="submit" name="commit" value="Search" class="btn btn-success" />
</form>    </div>
  </div>
</div>

      </div>
      <div id="menu1" class="tab-pane fade">
        <div class="container-fluid">
  <div class="row">
    <!-- <div class="col-sm-4 col-sm-offset-4"> -->

    <div class="col-sm-12">

      <br>

      <form id="search-form" action="https://quiet-dusk-47838.herokuapp.com/projects" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
        <input type="text" name="title" id="title" class="form-control" placeholder="Name" /><br>
        <input type="number" name="stage" id="stage" class="form-control" placeholder="Stage" /><br>
        <input type="text" name="description" id="description" class="form-control" placeholder="Description" /><br>
        <input type="submit" name="commit" value="Search" class="btn btn-success" />
</form>    </div>
  </div>
</div>

      </div>
    </div>

  </div>

  <div class="col-sm-6" >
    <h2 class="text-center" style="color: white;">
      Or Find Locations Near You
    </h2>

    <br>

    <div class="container-fluid">
  <div id="map"></div>

  <div id="map-canvas">
    <div id="map-container"></div>
  </div>
</div>


  </div>

</div>
<!-- End pills/tabs -->

<br>
<br>

<!-- Page Content -->
<div class="container container-gloss">

  <!-- Page Header -->
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">Projects in Motion
        <small>Projects</small>
      </h1>
    </div>
  </div>
  <!-- /.row -->

  <!-- Projects Row -->
  <div class="row">
      <div class="col-md-6 portfolio-item">
  <a href="index.html#">
    <img src="https://maps.googleapis.com/maps/api/streetview?size=555x317&amp;location=,&amp;fov=90" alt="Streetview?size=555x317&amp;location=,&amp;fov=90" />
  </a>
  <h3>
    <a href="https://quiet-dusk-47838.herokuapp.com/projects/1">Building PLayground</a>
    &nbsp
    <span><small>Stage: 1</small></span>
  </h3>
  <p>Description: Playground for Towson University for relaxing !!</p>
</div>

      <div class="col-md-6 portfolio-item">
  <a href="index.html#">
    <img src="https://maps.googleapis.com/maps/api/streetview?size=555x317&amp;location=76.5993,39.4037&amp;fov=90" alt="Streetview?size=555x317&amp;location=76.5993,39" />
  </a>
  <h3>
    <a href="https://quiet-dusk-47838.herokuapp.com/projects/3">Flower </a>
    &nbsp
    <span><small>Stage: 1</small></span>
  </h3>
  <p>Description: flower flower</p>
</div>

      <div class="col-md-6 portfolio-item">
  <a href="index.html#">
    <img src="https://maps.googleapis.com/maps/api/streetview?size=555x317&amp;location=,&amp;fov=90" alt="Streetview?size=555x317&amp;location=,&amp;fov=90" />
  </a>
  <h3>
    <a href="https://quiet-dusk-47838.herokuapp.com/projects/2">Building More Parking Lots</a>
    &nbsp
    <span><small>Stage: 2</small></span>
  </h3>
  <p>Description: Need to build more parking lots. It takes me 2 hours to find a parking lot</p>
</div>

      <div class="col-md-6 portfolio-item">
  <a href="index.html#">
    <img src="https://maps.googleapis.com/maps/api/streetview?size=555x317&amp;location=,&amp;fov=90" alt="Streetview?size=555x317&amp;location=,&amp;fov=90" />
  </a>
  <h3>
    <a href="https://quiet-dusk-47838.herokuapp.com/projects/4">NEW PROJECT</a>
    &nbsp
    <span><small>Stage: 1</small></span>
  </h3>
  <p>Description: TESTING !!</p>
</div>

  </div>
  <!-- /.row -->
  
  <br><br>

</div>

<br>

<div class="container container-gloss">
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">Get Started
        <small style="color: #428bca;">Links</small>
      </h1>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <h3 class="text-center">Projects</h3>
      <ul id="links_from_home" class="text-center">
        <li>
          <a href="https://quiet-dusk-47838.herokuapp.com/projects">View all projects</a>
        </li>
      </ul>
    </div>
    <div class="col-sm-4">
      <h3 class="text-center">Users</h3>
      <ul id="links_from_home" class="text-center">
        <li>
          <a href="https://quiet-dusk-47838.herokuapp.com/users/new">Create an account</a>
        </li>
        <li>
          <a href="https://quiet-dusk-47838.herokuapp.com/users">View all users</a>
        </li>
      </ul>
    </div>
    <div class="col-sm-4">
      <h3 class="text-center">Locations</h3>
      <ul id="links_from_home" class="text-center">
        <li>
          <a href="https://quiet-dusk-47838.herokuapp.com/vacants/new">Submit a location</a>
        </li>
        <li>
          <a href="https://quiet-dusk-47838.herokuapp.com/vacants">View all locations</a>
        </li>
      </ul>
    </div>
  </div>
</div>

  </div>

  <footer class="footer" style="background: transparent;">
  <div class="container">
    <p class="text-muted">
      &copy; WWYDH 2016
      <a target="_blank" href="https://github.com/1cph93/WWYDH">
        <span class="fa fa-github fa-2x" style="float: right;"></span>
</a>    </p>
  </div>
</footer>


</body>
</html>
