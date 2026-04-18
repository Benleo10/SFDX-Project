/**
 * @description       : Integration Movies
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-18-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class IntegrationMovies {
    
    public static void getMovies() {
        //Http, HttpRequest, HttpResponse

        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('Callout:DummyAPICallout/api/movies');
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        system.debug('Response Status: ' + response.getStatusCode());

        if(response.getStatusCode() == 200) {
            system.debug('Response Body: ' + response.getBody());
        }   


        List<object> records = ((List<object>)JSON.deserializeUntyped(response.getBody()));
        system.debug('Response Body: ' + records);

        List<Movie__c> movieList = new List<Movie__c>();

        for(object movieObject : records)
        {
            Map<string,object> movieMap = (Map<string,object>)movieObject;
            integer MovieID = (integer)movieMap.get('id');
            string Title = (string)movieMap.get('title');
            string Rated = (string)movieMap.get('rating');
            integer Year = (integer)movieMap.get('year');

            Movie__c movie = new Movie__c();
            movie.MovieID__c = MovieID;
            movie.Title__c = Title;
            movie.Rated__c = Rated;
            movie.Year__c = Year;

            movieList.add(movie);

        }

        if(movieList.size() > 0) {
            insert movieList;
        }

    }    

}