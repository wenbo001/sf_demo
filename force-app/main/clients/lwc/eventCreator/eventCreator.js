/**
 * Created by wenboliu on 05/09/2024.
 */

import { LightningElement, track, api } from 'lwc';
import createEvent from '@salesforce/apex/EventController.createEvent';

export default class EventCreator extends LightningElement {
    @track subject = '';
    @track location = '';
    @track startDateTime = '';
    @track endDateTime = '';
    @track description = '';
    @track message = '';
    @api recordId;

    handleInputChange(event) {
        const field = event.target.dataset.id;
        if (field === 'subject') {
            this.subject = event.target.value;
        } else if (field === 'location') {
            this.location = event.target.value;
        } else if (field === 'startDateTime') {
            this.startDateTime = event.target.value;
        } else if (field === 'endDateTime') {
            this.endDateTime = event.target.value;
        } else if (field === 'description') {
            this.description = event.target.value;
        }
    }

    createEvent() {
        createEvent({
            subject: this.subject,
            location: this.location,
            startDateTime: this.startDateTime,
            endDateTime: this.endDateTime,
            description: this.description,
            accountId: this.recordId
        })
            .then(result => {
                this.message = result;
                this.clearFields();
            })
            .catch(error => {
                this.message = 'Error: ' + error.body.message;
            });
    }

    clearFields() {
        this.subject = '';
        this.location = '';
        this.startDateTime = '';
        this.endDateTime = '';
        this.description = '';
    }
}