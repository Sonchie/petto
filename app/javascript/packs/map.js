// We have access to Gmaps function because we Yarn installed 'gmaps'
import GMaps from 'gmaps/gmaps.js';


//let do some jS to create the map

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
// now that we have a new map, let's add the markets
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);

//   const styles = [ //I removed the style, go to snazzy maps and get it
// ];

// //adding the style
//   map.addStyle({
//   styles: styles,
//   mapTypeId: 'map_style'
//   });
//   map.setStyle('map_style');

//setting the zoom.
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}
