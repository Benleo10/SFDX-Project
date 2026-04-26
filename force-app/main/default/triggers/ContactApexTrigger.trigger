/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-26-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ContactApexTrigger on contact (after insert) {
    ContactTriggerHandler.handleAfterInsert(trigger.new);
}