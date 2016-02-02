$(document).ready(function() {
    var map;
    function initMap() {
      var myLatLng = {lat: -34.397, lng: 150.644};
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
});