// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function initHazardMap(lat, lng) {
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });
}
// var mapHazard;

function initHazardIndexMap(locations) {
    var myCoords = new google.maps.LatLng(locations[0][0], locations[0][1]);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    var mapHazard = new google.maps.Map(document.getElementById('mapHazard'), mapOptions);

    for (i = 0; i < locations.length; i++) {
      new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][0], locations[i][1]),
        map: mapHazard
      });
    }
}
// Check on use of place below

function initHazardMap2(lat, lng) {
    document.getElementById('latitude').value = lat;
    document.getElementById('longitude').value = lng;

    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
        center: myCoords,
        zoom: 14
    };

    var map = new google.maps.Map(document.getElementById('mapHazard2'), mapOptions);

    var marker = new google.maps.Marker({
        position: myCoords,
        animation: google.maps.Animation.DROP,
        map: map,
        draggable: true
    });

    // refresh marker position and recenter map on marker
    function refreshMarker(){
        var lat = document.getElementById('latitude').value;
        var lng = document.getElementById('longitude').value;
        var myCoords = new google.maps.LatLng(lat, lng);
        marker.setPosition(myCoords);
        map.setCenter(marker.getPosition());
    }
    // when input values change call refreshMarker
    document.getElementById('latitude').onchange = refreshMarker;
    document.getElementById('longitude').onchange = refreshMarker;

    // when marker is dragged update input values
    marker.addListener('drag', function() {
        latlng = marker.getPosition();
        newlat=(Math.round(latlng.lat()*1000000))/1000000;
        newlng=(Math.round(latlng.lng()*1000000))/1000000;
        document.getElementById('latitude').value = newlat;
        document.getElementById('longitude').value = newlng;
    });

    // When drag ends, center (pan) the map on the marker position
    marker.addListener('dragend', function() {
        map.panTo(marker.getPosition());
    });

}
