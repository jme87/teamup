import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filter", "cards", "mapContainer", "level", "city", "selectedlevel", "selectedcity"];
  url = "events";
  cat = "";
  cityChoice = "";
  levelChoice = "";

  connect() {
    console.log("Hello from filter s. controller");
    // console.log(this.filterTargets)
  }

  createURL() {
    const url = `events?query=${this.cat}&level=${this.levelChoice}&city=${this.cityChoice}`;
    console.log(url);
    return url;
  };

  fire(event) {
    event.preventDefault();
    this.cat = event.currentTarget.children[0].id

    fetch(this.createURL(), {
      method: "GET",
      headers: {"Accept": "application/json"}
    })
    .then(response => response.json())
    .then(data=> {
      this.cardsTarget.innerHTML = data.cards
      this.mapContainerTarget.innerHTML = data.map
    })
  };

  level(event) {
    event.preventDefault();
    this.levelChoice = event.currentTarget.dataset.target;
    this.selectedlevelTarget.innerHTML = this.levelChoice;

    fetch(this.createURL(), {
      method: "GET",
      headers: {"Accept": "application/json"}
    })
    .then(response => response.json())
    .then(data=> {
      this.cardsTarget.innerHTML = data.cards
      this.mapContainerTarget.innerHTML = data.map
    })
  }

  city(event) {
    event.preventDefault();
    this.cityChoice = event.currentTarget.dataset.target;
    this.selectedcityTarget.innerHTML = this.cityChoice;

    fetch(this.createURL(), {
      method: "GET",
      headers: {"Accept": "application/json"}
    })
    .then(response => response.json())
    .then(data=> {
      this.cardsTarget.innerHTML = data.cards
      this.mapContainerTarget.innerHTML = data.map
    })
  }

}
