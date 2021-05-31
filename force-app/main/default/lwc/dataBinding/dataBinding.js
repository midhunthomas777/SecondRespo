import { LightningElement, track } from 'lwc';

export default class DataBinding extends LightningElement {
@track title;
    changehandler(event){

        this.title=event.target.value;
    }
}