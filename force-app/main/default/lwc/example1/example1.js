import { LightningElement, track } from 'lwc';

export default class Example1 extends LightningElement {

    @track firstname="hello";
   handlechange(event){
    this.firstname = event.target.value;
    }
}