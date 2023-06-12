import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filter", "cards", "mapContainer"];

  connect() {
    console.log("Hello from filter s. controller");
    // console.log(this.filterTargets)
  }

  fire(event) {
    event.preventDefault();
    console.log('fired');
    fetch(event.currentTarget.href, {
      method: "GET",
      headers: {"Accept": "application/json"}
    })
    .then(response => response.json())
    .then(data=> {
      this.cardsTarget.innerHTML = data.cards
      this.mapContainerTarget.innerHTML = data.map
      // console.log(data)
    })
  };
}
