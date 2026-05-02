/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-02-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Multiplication {
    
    //Print Multiplication of 5     
    public integer multiply(integer a){
        integer result = a * 5;
        System.debug('Multiplication = ' + result);
        return result;
    }
    
}