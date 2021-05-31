import { LightningElement,track } from 'lwc';

export default class Calculator18 extends LightningElement {
    FirstNumber=0;
    SecondNumber=0;
   @track Result =0;
   add(){
this.Result=parseInt(this.FirstNumber)+parseInt(this.SecondNumber)

   }
   sub(){
    this.Result=parseInt(this.FirstNumber) - parseInt(this.SecondNumber)

   }
   div(){

    parseInt(this.FirstNumber)/parseInt(this.SecondNumber)
   }
   mul(){
this.Result=parseInt(this.FirstNumber)*parseInt(this.SecondNumber)

   }

}