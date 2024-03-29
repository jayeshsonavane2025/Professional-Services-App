<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>One</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="css/vendor.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Theme initialization -->

<script>
function access(){
  //alert('Choose location ');
}
</script>
    </head>

    <body onload="access()">
                    <div class="header-block header-block-search hidden-sm-down">
                        <form role="search">
                            <div class="input-container"> <i class="search"></i> <input type="search" id="mapsearch" placeholder="Search Location">
                                <div class="underline"></div>
                            </div>
                        </form>
                    </div>

                  <article class="content item-editor-page">
                    <div class="title-block">

                   <div id="map-canvas" style="height:600px;width:1330px;margin-top:50px;margin-left:90px;"> </div>
	               
                   <form action="afterRegisterServiceProviderLocation" method="post">
                   <input type="hidden" name ="lat" id="lat"/>
                   <input type="hidden" name ="lng" id="lng"/>
    		 <center>  <input type="submit" id="sendloc" value="Go" class="button-33" ></center>
 						 </div>

         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8DXyFQH6HR6IkcTVOIr2CxWyUSIYNAqg&libraries=places"></script>

<script type="text/javascript">

    var map = new google.maps.Map(document.getElementById('map-canvas'), {
      zoom: 15,
      center: new google.maps.LatLng(21.35367927152599, 74.88174289566643),

      mapTypeId: google.maps.MapTypeId.HYBRID
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i,j;



    var fenway = {lat:19.997454, lng: 73.789803};
    	var panorama = new google.maps.StreetViewPanorama(
            document.getElementById('pano'), {
              position: fenway,
              pov: {
                heading: 34,
                pitch: 10
              }
            });
        map.setStreetView(panorama);


//    map = new google.maps.Map(element, options);
	var searchBox = new google.maps.places.SearchBox(document.getElementById('mapsearch'));
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(searchBox);

	 var marker = new google.maps.Marker({
		 position:{
			     lat:21.3496,
				 lng:74.8797
				 
		 },
		 map:map,
		 draggable:true});

	google.maps.event.addListener(searchBox, 'places_changed', function(c){
		console.log(searchBox.getPlaces());
		var places = searchBox.getPlaces();
		var bounds = new google.maps.LatLngBounds();
		var i,place;

		for(i=0;place = places[i];i++){
			bounds.extend(place.geometry.location);
			marker.setPosition(place.geometry.location);
		}

		map.fitBounds(bounds);
		map.setZoom(17);
	});

	google.maps.event.addListener(map, 'click', function(c){
    placeMarker(c.latLng);
    
	});
  function placeMarker(location) {
     var marker = new google.maps.Marker({
         position: location,
         map: map
     });
     alert('location set ');
     var x = document.getElementById('sendloc');
     var lat = document.getElementById('lat');
     lat.value = location.lat();
     var lng = document.getElementById('lng');
     lng.value=  location.lng();
      
     x.type = "submit";
 }
 </script>

<!--       <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8DXyFQH6HR6IkcTVOIr2CxWyUSIYNAqg&callback=myMap&libraries=places"></script> -->
      <script src="jquery.js"></script>

            </div>
        </div>
        <!-- Reference block for JS -->
        <div class="ref" id="ref">
            <div class="color-primary"></div>
            <div class="chart">
                <div class="color-primary"></div>
                <div class="color-secondary"></div>
            </div>
        </div>
        <script src="js/vendor.js"></script>
        <script src="js/app.js"></script>
    </body>
    <style>
    body{
    background: url('https://wallpaperbat.com/img/92154-pharmacy-wallpaper-top-free-pharmacy-background.jpg') no-repeat fixed center center; background-size: cover;
    }
    .button-33 {
  background-color: #c2fbd7;
  border-radius: 100px;
  box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
  color: green;
  cursor: pointer;
  display: inline-block;
  font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  width:200px;height:80px;
  
  margin-top:50px;
  border: 0;
  font-size: 16px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-33:hover {
  box-shadow: rgba(44,187,99,.35) 0 -25px 18px -14px inset,rgba(44,187,99,.25) 0 1px 2px,rgba(44,187,99,.25) 0 2px 4px,rgba(44,187,99,.25) 0 4px 8px,rgba(44,187,99,.25) 0 8px 16px,rgba(44,187,99,.25) 0 16px 32px;
  transform: scale(1.05) rotate(-1deg);
}
.search{
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
  background: #f2f2f2;
  font-family: 'Open Sans', sans-serif;
}

.search {
  width: 100%;
  position: relative;
  display: flex;
}

.searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
}
/* Custom Styles for Search Box */
.input-container {
    position: relative;
    display: inline-block;
    margin-top:20px;
    margin-left:45%;
    border: 2px solid black;
    border-radius: 20px;
}

.input-container i {
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    color: #888;
}

.input-container input[type="search"] {
    padding: 10px 40px 10px 30px;
    border: 1px solid #ccc;
    border-radius: 20px;
    outline: none;
    font-size: 16px;
    color: #444;
    transition: border-color 0.3s;
}

.input-container input[type="search"]:focus {
    border-color: #4CAF50;
}

.input-container .underline {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: #4CAF50;
    transform-origin: bottom left;
    transform: scaleX(0);
    transition: transform 0.3s;
}

.input-container input[type="search"]:focus ~ .underline {
    transform: scaleX(1);
}


</style>

</html>
