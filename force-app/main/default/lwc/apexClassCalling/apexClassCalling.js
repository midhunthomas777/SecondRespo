import { LightningElement,track } from 'lwc';
import getContactListMidhun from '@salesforce/apex/ContactController.getContactList';

export default class CallingApex extends LightningElement {
    @track contacts;
    @track error;

    handleLoad() {
        getContactListMidhun()
            .then(result => {
                this.contacts = result;
            })
            .catch(error => {
                this.error = error;
            });
    }
}