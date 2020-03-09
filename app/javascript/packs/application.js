require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;
import "bootstrap";
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initUpdateNavbarOnScroll } from '../components/top-navbar';
import 'plugins/flatpickr';
import {scrollLastMessageIntoView} from '../components/scroll';


initAutocomplete();

// NavBar Scroll
initUpdateNavbarOnScroll();

scrollLastMessageIntoView()
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
