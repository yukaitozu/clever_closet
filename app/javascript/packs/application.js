require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/top-navbar';
initUpdateNavbarOnScroll();


import 'plugins/flatpickr'

import {scrollLastMessageIntoView} from '../components/scroll';
scrollLastMessageIntoView()
window.scrollLastMessageIntoView = scrollLastMessageIntoView;
