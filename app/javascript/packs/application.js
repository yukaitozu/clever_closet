require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/top-navbar';
import 'plugins/flatpickr';
import {scrollLastMessageIntoView} from '../components/scroll';

// NavBar Scroll
initUpdateNavbarOnScroll();

scrollLastMessageIntoView()
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
