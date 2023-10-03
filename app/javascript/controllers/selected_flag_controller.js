import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selected-flag"
export default class extends Controller {
  static targets = ["flag1", "flag2"]

  connect() {
    this.flag1Target.addEventListener("click", (event) => {
      this.flag1Target.classList.add("selected");
      this.flag2Target.classList.remove("selected");
    });

    this.flag2Target.addEventListener("click", (event) => {
      this.flag2Target.classList.add("selected");
      this.flag1Target.classList.remove("selected");
    });
  }
}
