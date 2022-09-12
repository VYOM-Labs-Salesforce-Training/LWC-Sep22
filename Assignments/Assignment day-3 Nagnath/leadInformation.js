import { LightningElement,wire } from 'lwc';

import getLeadList from '@salesforce/apex/LeadController.getLeadList';

export default class LeadInformation extends LightningElement {

    @wire(getLeadList) Leads;
}