import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "count" ]

  connect() {
    setInterval(this.refresh, 5000)
  }

  refresh = () => {
    console.log('hi')
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then(data => {
        const restaurantsCount = data.restaurants.length;
        this.countTarget.innerText = restaurantsCount;
      })
  }
}
