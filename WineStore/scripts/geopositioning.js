var myCenter = new google.maps.LatLng(43.650893, -79.378381);

function initialize() {
    
    var mapProp = {
        center: myCenter,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var marker = new google.maps.Marker({
        position: myCenter,
    });

    marker.setMap(map);

    var informWindow = new google.maps.InfoWindow({
        content: "Jim's Wine Store"
    });

    informWindow.open(map, marker);
}