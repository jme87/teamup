import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["filter", "cards", "mapContainer", "level", "city"];
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

    // switch (this.catChoice) {
    //   case "cat":
    //     url = this.catChoice;
    //     break;
    //   case "level":
    //     url = this.levelChoice;
    //     break;
    //   case "city":
    //     url = this.cityChoice;
    //     break;
    //   case "cat+level":
    //     url = `${this.catChoice}&level=${this.levelChoice}`;
    //     break;
    //   case "cat+city":
    //     url = `${this.catChoice}&city=${this.cityChoice}`;
    //     break;
    //   case "level+city":
    //     url = `${this.levelChoice}&city=${this.cityChoice}`;
    //     break;
    //   case "cat+level+city":
    //     url = `${this.catChoice}&level=${this.levelChoice}&city=${this.cityChoice}`;
    //     break;
    // }
