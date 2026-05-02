/**
 * @description       : ATM Menu DIY Day 3
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-30-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ATMMenuDIY {
    integer openingBalance = 10000;
    integer withdraw = 1;
    integer deposit = 2;
    
    public void doOperation(integer operation, integer userInput)
    {
        if(operation == withdraw)
        {
            integer newBalance = openingBalance - userInput;
            system.debug('Withdraw');
            system.debug('New Balance = '+newBalance);
        }
        else if(operation == deposit)
        {
            integer finalBalance = openingBalance + userInput;
            system.debug('Deposit');
            system.debug('Final Balance = '+finalBalance);
        }
        else
        {
            system.debug('Invalid Operation');
        }
    }    


}