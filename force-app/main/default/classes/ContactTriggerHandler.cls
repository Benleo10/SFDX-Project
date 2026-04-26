/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-26-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactTriggerHandler {
    public static void handleAfterInsert(List<Contact> contacts) {
        for (Contact con : contacts) {
            string name = con.name;
        string email = con.email;
        string contactRecordId = con.id;
        }
    }
}