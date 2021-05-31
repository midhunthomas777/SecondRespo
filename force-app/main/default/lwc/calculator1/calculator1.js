import { LightningElement, track } from 'lwc';

export default class Calculator1 extends LightningElement {
    firstnumber=0;
    secondnumber=0;
     @track result;

     add(){
         this.result=parseInt(this.firstnumber)+parseInt(this.secondnumber);
     }
     sub(){
         this.result=parseInt(this.firstnumber)-parseInt(this.secondnumber);
     }
     firstnumberchange(event){
         this.firstnumber=event.target.value;
     }
     secondnumberchange(event){
         this.secondnumber=event.target.value;
     }
}