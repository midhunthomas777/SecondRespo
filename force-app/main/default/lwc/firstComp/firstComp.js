import { LightningElement } from 'lwc';

export default class FirstComp extends LightningElement {
    midhun='Hanna';
    changeHandler(event) {
        this.greeting = event.target.value;
      }
}