import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="post"
export default class extends Controller {

  static targets = ["editForm", "answerForm", "editRelatedForm"]

  connect() {
    console.log("Hello from post_controller.js")
  }

  edit() {
    console.log("Hello from post_controller#edit")
    this.editFormTarget.classList.toggle("d-none");
  }

  answer() {
    console.log("Hello from post_controller#answer")
    this.answerFormTarget.classList.toggle("d-none");
  }
}
