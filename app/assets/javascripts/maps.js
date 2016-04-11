$(window).load(function() {
  loadScript();
});

var map;
function initMap() {
  var myLatLng = {lat: 30.070163, lng: 31.222095};
  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 15
});

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Tailored'
});
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBKtTdsu4z83PUNmiKhAb0tPKTBoqY7lSw&callback=initMap"
  document.body.appendChild(script);
}