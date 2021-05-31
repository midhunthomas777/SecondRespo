import { LightningElement } from 'lwc';


export default class ConditionalRendering extends LightningElement {
    displayDiv=false;
displayDivHandler(event){
    this.displayDiv  =event.target.checked;
}
}