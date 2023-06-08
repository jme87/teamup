import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-map"
export default class extends Controller {

  static targets = ["mymap"]
  connect() {
    console.log("Hello from show_map#connect")
  }

  show() {
    console.log("Hello from show_map#show")
    console.log(this.mymapTarget)
    this.mymapTarget.classList.toggle("d-none");
  }
}
