import mapboxgl from 'mapbox-gl';
// or "const mapboxgl = require('mapbox-gl');"

const fetchCity = () => {
  const key = ENV[MAPBOXKEY];
  const city = document.getElementById('address').innerText;
  const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${city}.json?access_token=${key}`;

  console.log(city, url)

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      const long = data.features[0].geometry.coordinates[0];
      const lat = data.features[0].geometry.coordinates[1];

      mapboxgl.accessToken = ENV[MAPBOXKEY];
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [long, lat],
        zoom: 12
      });
      new mapboxgl.Marker()
      .setLngLat([long, lat])
      .addTo(map);
    });
};

export { fetchCity }
