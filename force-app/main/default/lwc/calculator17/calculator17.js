import { LightningElement, track } from 'lwc';

export default class Calculator17 extends LightningElement {
    Firstname=0;
    SecondName=0;
    @track result=0;
    FirstNumberChange(event){
        this.Firstname = event.target.value;

    } 
    SecodNumberChange(event){
        this.SecondName= event.target.value;
    }
add(){
    this.result=parseint(this.Firstname)+ parseint(this.SecondName)

}
sub(){
    this.result=parseint(this.Firstname)-parseint(this.SecondName)
}
div(){
    this.result=parseint(this.Firstname)/ parseint(this.SecondName)
}
mul(){ 
    this.result=parseint(this.Firstname)* parseint(this.SecondName)
}
}