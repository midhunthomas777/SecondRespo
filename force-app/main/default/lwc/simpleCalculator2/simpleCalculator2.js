import { LightningElement } from 'lwc';

export default class SimpleCalculator2 extends LightningElement {
    currentResult;

    firstNumber;
    secondNumber;
    numberChangeHandler(event){
        const inputboxname=event.target.name
        if (inputboxname==='firstNumber'){
            this.firstNumber=event.target.value
        }
        if(inputboxname==='secondNumber'){
            this.secondNumber=event.target.value
        }
    }
    addhandler(){
        const firstn=parseInt(this.firstNumber);
        console.log('Current result!!'+firstn);
        const secondn=parseInt(this.secondNumber);
        console.log('Current result!!'+secondn);
        this.currentResult=firstn+secondn;
        console.log('Current result!!'+this.currentResult);

    }
    subHandler(){
        this.currentResult=parseInt(this.firstNumber)+parseInt(this.secondNumber);
    }
    multiplyHandler(){
        this.currentResult=parseInt(this.firstNumber)+(this.secondNumber);
    }
    divisionHandler(){
        const firstn=parseInt(this.firstNumber)
        const secondn=parseInt(this.secondNumber)
        this.currentResult=`Result of ${firstN}/${secondN} is ${firstN/secondN}`;
    }
    
    
    

}