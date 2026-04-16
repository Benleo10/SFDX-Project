import { LightningElement, wire, track } from 'lwc';
import getAccountsWithContacts from '@salesforce/apex/AccountContactController.getAccountsWithContacts';

export default class AccountContactsList extends LightningElement {
    @track accounts = [];
    @track error;
    isLoading = true;
    
    @wire(getAccountsWithContacts)
    wiredAccounts({ error, data }) {
        this.isLoading = false;
        if (data) {
            // Normalize: ensure Contacts is an array for each account
            this.accounts = (data || []).map(acc => ({
                ...acc,
                Contacts: (acc.Contacts || []).map(c => ({ ...c }))
            }));
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.accounts = [];
        }
    }
}