require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/top-navbar';
initUpdateNavbarOnScroll();
