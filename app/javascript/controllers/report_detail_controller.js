import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="report-detail"
export default class extends Controller {
  static targets = ["toggleReportDescription", "toggleArrow", "toggleNavheight"];

  connect() {
    console.log("Connected to report-detail")
  }

  toggleDescription(event) {
    event.preventDefault();
    this.toggleReportDescriptionTarget.classList.toggle("hidden");
  }

  toggleArrow(event) {
    event.preventDefault();
    if (this.toggleArrowTarget.classList.contains("rotate-180")) {
      this.toggleArrowTarget.classList.remove("rotate-180");
      this.toggleArrowTarget.classList.add("rotate-360");
    } else {
      this.toggleArrowTarget.classList.remove("rotate-360");
      this.toggleArrowTarget.classList.add("rotate-180");
    }
  }

  toggleNavheight(event) {
    event.preventDefault();
    this.toggleNavheightTarget.classList.toggle("custom-navheight");
  }
}
