import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {

  static bg = document.querySelector("#banner");

  updateNavbar() {
    if (window.scrollY >= bg.innerHeight) {
      this.element.classList.add("bg-green")
    } else {
      this.element.classList.remove("bg-transparent")
    }
  }
}
