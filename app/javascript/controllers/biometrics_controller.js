import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ["show"];
  showBiometrics(event) {
    this.showTarget.style.display = 'block'
  }

  hideBiometrics() {
    this.showTarget.style.display = 'none'
  }
}
