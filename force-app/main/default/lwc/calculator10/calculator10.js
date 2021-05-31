import { LightningElement, track } from 'lwc';


export default class Calculator10 extends LightningElement {
    firstNumber=0;
    secondNumber=0;
    @track result=0 ;
    firstnumberchange(event){this.firstNumber=event.target.value}
    secondnumberchange(event){this.secondNumber=event.target.value}
    add(){this.result=parseInt(this.firstNumber)+parseInt(this.secondNumber);}
    sub(){this.result=parseInt(this.firstNumber)-parseInt(this.secondNumber);}

}