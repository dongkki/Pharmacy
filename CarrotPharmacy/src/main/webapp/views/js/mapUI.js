
function Map() {
    var mapOptions = {
        center: new google.maps.LatLng(37.5642135, 127.0016985),
        zoom: 12
    };

    var map = new google.maps.Map(
        document.getElementById("googleMap"), mapOptions);
}

function initMap1234() {
    const pahrmLatLng = { lat: lat, lng: lng };
    const map = new google.maps.Map(document.getElementById("googleMap"), {
        zoom: 15,
        center: pahrmLatLng,
    });
    var marker = new google.maps.Marker({
        position: pahrmLatLng,
        map,
    });
    infoWindow = new google.maps.InfoWindow();
    var infowindow = new google.maps.InfoWindow({
        content: contentString,
        size: new google.maps.Size(200, 100)
    });
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map, marker);
    });
}
