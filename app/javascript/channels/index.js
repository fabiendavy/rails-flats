// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
import { giveActiveClassToCarouselElement } from './flats';
import { fetchCity } from './mapbox';
import { initSelect2 } from '../components/init_select2';

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

giveActiveClassToCarouselElement();
fetchCity();
initSelect2();
