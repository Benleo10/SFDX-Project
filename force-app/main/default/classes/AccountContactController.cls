/**
 * Exposes read-only APIs to fetch Accounts with their related Contacts for LWC usage.
 * Returns only the fields needed by the UI to optimize performance.
 */
public with sharing class AccountContactController {

    /**
     * Retrieves Accounts with their Contacts for display in UI.
     * Uses WITH USER_MODE to enforce the running user's CRUD/FLS and sharing.
     *
     * @return List of Account records with nested Contact subquery.
     *         Account fields: Id, Name
     *         Contact fields: Id, Name, Title, Email, Phone
     * @example
     * // LWC usage (wire):
     * // @wire(getAccountsWithContacts) accounts;
     */
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsWithContacts() {
        try {
            // Read-only query with enforced user mode for CRUD/FLS and sharing
            List<Account> accounts = [
                SELECT Id, Name,
                       (SELECT Id, Name, Title, Email, Phone FROM Contacts ORDER BY LastName, FirstName)
                FROM Account
                WITH USER_MODE
                ORDER BY Name
            ];
            return accounts;
        } catch (QueryException qe) {
            // Wrap in AuraHandledException for user-friendly error
            throw new AuraHandledException('Unable to load Accounts and Contacts. Please try again later.');
        } catch (Exception e) {
            throw new AuraHandledException('Unexpected error while loading data.');
        }
    }
}