/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-26-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class StripeController {
    
    @future(callout=true)
    public static void doCallout(string name, string email, string contactRecordId) {
        createStripeCustomer(name, email, contactRecordId);
    }
    
    public static void createStripeCustomer(string name, string email, string contactRecordId) {

        //HTTP, HTTPRequest, HTTPResponse
        Http http = new Http();

        HTTPRequest request = new HTTPRequest();
        string endPoint = 'Callout:StripeNamedCredential/v1/customers';
        request.setEndpoint(endPoint);
        request.setMethod('POST');

        //Payload: RequestBody : name,email - encoded
        string payload = 'name=' + EncodingUtil.urlEncode(name,'UTF-8') + '&email=' + EncodingUtil.urlEncode(email,'UTF-8');
        request.setBody(payload);

        HTTPResponse response = http.send(request);
        system.debug('Response Status: ' + response.getStatusCode());
        system.debug('Response Body: ' + response.getBody());


        if(response.getStatusCode() == 200) {
            Map<string,object> results = (Map<string,object>)JSON.deserializeUntyped(response.getBody());
            string customerId = (string)results.get('id');
            system.debug('Customer Id: ' + customerId);

            //Update Contact with Customer Id
            Contact record = new Contact();
            record.Id = contactRecordId;
            record.StripeId__c = customerId;

            //update record;
        }
        


    }
}