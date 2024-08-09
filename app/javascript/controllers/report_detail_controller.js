import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="report-detail"
export default class extends Controller {
  static targets = ["toggleReportDescription"];
  connect() {
    console.log("Connected to report-detail")
  }

  toggleDescription(event) {
    event.preventDefault();
    this.toggleReportDescriptionTarget.classList.toggle("hidden");
  }
}
