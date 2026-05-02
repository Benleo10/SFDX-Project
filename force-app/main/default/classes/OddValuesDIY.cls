/**
 * @description       : Sum of Odd Values DIY Day 4
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-01-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class OddValuesDIY {

    //Sum of odd values between 1 to 10 
    public integer sumOddValues(integer start, integer end){
        integer sum = 0;
        for(integer i = start; i <= end; i++){
            if(i % 2 != 0){
                sum = sum + i;
            }
        }
        return sum;
    }

}