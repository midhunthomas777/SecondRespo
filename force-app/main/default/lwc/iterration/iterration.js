import { LightningElement, track } from 'lwc';

export default class Iterration extends LightningElement {
    showDiv=false;
    @track citylist=['Delhi','Banglore','Chennai','Mumbai'];
    showDivHandler(event){
        this.showDiv=event.target.checked;
    }
}