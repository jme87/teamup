import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filter", "cards", "mapContainer", "level"];
  catChoice = "";

  connect() {
    console.log("Hello from filter s. controller");
    // console.log(this.filterTargets)
  }

  fire(event) {
    event.preventDefault();
    console.log('fired');
    this.catChoice = event.currentTarget.href
    fetch(event.currentTarget.href, {
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
    console.log('level fired');
    const level = event.currentTarget.dataset.target;
    const url = this.catChoice ? `${this.catChoice}&level=${level}` : `?level=${level}`;
    console.log(url)


    fetch(url, {
      method: "GET",
      headers: {"Accept": "application/json"}
    })
    .then(response => response.json())
    .then(data=> {
      this.cardsTarget.innerHTML = data.cards
      this.mapContainerTarget.innerHTML = data.map
      //this.levelTarget.innerHTML = data.level
      // console.log(data)
    })
  }
}
