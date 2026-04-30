/**
 * @description       : Calculator Based on Operator Day 3 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-30-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CalculatorOperatorDIY {
    
    integer firstData = 10;
    integer secondData = 20;
    string operation ='+';

    public static void calculation(integer firstData, integer secondData, string operation)
    {
        if(operation == '+')
        {
            system.debug('Addition = '+(firstData+secondData));
        }
        else if(operation == '-')
        {
            system.debug('Subtraction = '+(firstData-secondData));
        }
        else if(operation == '*')
        {
            system.debug('Multiplication = '+(firstData*secondData));
        }
        else if(operation == '/')
        {
            system.debug('Division = '+(firstData/secondData));
        }
        else
        {
            system.debug('Invalid Operator');
        }
    } 

    
}