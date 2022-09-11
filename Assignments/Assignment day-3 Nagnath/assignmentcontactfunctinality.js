import { LightningElement, wire, track } from 'lwc';
import findContacts from '@salesforce/apex/ContactController.findContacts';


const DELAY = 300;

export default class Assignmentcontactfunctinality extends LightningElement {

    @track searchKey = '';

    @wire(findContacts, { searchKey: '$searchKey' })
    contacts;

    handleKeyChange(event) {
        window.clearTimeout(this.delayTimeout);
        const searchKey = event.target.value;
        this.delayTimeout = setTimeout(() => {
            this.searchKey = searchKey;
        }, DELAY);
    }
}