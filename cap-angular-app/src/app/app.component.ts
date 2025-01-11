import { Component } from '@angular/core';
import { CapTest3 } from "cap-test-3";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'cap-angular-app';

  test() {
    CapTest3.printSomething({value: "hello"})
  }
}
