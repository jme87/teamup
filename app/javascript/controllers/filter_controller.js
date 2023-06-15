import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filter", "cards", "mapContainer", "level", "city", "selectedlevel", "selectedcity", "title"];
  url = "events";
  cat = "";
  cityChoice = "";
  levelChoice = "";

  connect() {
    console.log("Hello from filter s. controller");
    // console.log(this.filterTargets)
    console.log(this.cityTarget);
    if (!this.cityTarget) {
      this.selectedcityTarget.classList.add("d-none");
    }
  }

  createURL() {
    const url = `events?query=${this.cat}&level=${this.levelChoice}&city=${this.cityChoice}`;
    console.log(url);
    return url;
  };

  fire(event) {
    event.preventDefault();
    this.cat = event.currentTarget.children[0].id;
    this.titleTarget.innerHTML = `Results for ${this.cat}`;

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
    this.selectedlevelTarget.classList.remove("d-none");

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
    // this.selectedcityTarget.classList.remove("d-none");

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
