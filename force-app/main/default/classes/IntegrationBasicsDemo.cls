/**
 * @description       : Integration Basics 1
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-17-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class IntegrationBasicsDemo {

    public static void getMovies()
    {
        //Http, HttpRequest, HttpResponse   

        Http http = new Http();


        HttpRequest request = new HttpRequest();
        request.setEndpoint('Callout:DummyAPICallout/api/movies');
        request.setMethod('GET');


        HttpResponse response = http.send(request);
        system.debug('Response Status: ' + response.getStatusCode());

        if(response.getStatusCode() == 200)
        {
            system.debug('Response Body: ' + response.getBody());
        }

    }



}