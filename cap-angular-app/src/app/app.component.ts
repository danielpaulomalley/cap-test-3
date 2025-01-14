import { Component } from '@angular/core';
import { CapTest3 } from "cap-test-3";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  printers?: string[]
  title = 'cap-angular-app';

  async test() {
    const r = await CapTest3.getPrinters()
    this.printers = r.value
  }
}
