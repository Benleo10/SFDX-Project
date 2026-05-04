/**
 * @description       : Sum of Odd values and Even values Day 4
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-04-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class OddEvenDIY {
    
    //Sum of odd values and Even Values
    public integer sumOddValues(integer start,integer finalValue){
        integer sum = 0;
        for(integer i=start; i<=finalValue; i++)
        {
            if(math.mod(i,2)!=0)
            {
                sum = sum + i;
                System.debug('Sum of Odd Values = '+Sum);
            }
        }
        return sum;
    }

    public integer sumEvenValues(integer start,integer finalValue){
        integer sum = 0;
        for(integer i=start; i<=finalValue; i++)
        {
            if(math.mod(i,2)==0)
            {
                sum = sum + i;
                System.debug('Sum of Even Values = '+Sum);
            }
        }
        return sum;
    }
}



