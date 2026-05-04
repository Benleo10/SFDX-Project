/**
 * @description       : Sum of Odd Values DIY Day 4
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-04-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class OddValuesDIY {

    // Sum of odd numbers between start and endVal
    public static Integer sumOddValues(Integer start, Integer finalValue) {

        Integer sum = 0;

        for(Integer i = start; i <= finalValue; i++) {

            // Check if number is odd
            if(Math.mod(i, 2) == 1) {
                sum = sum + i;
            }
        }

        return sum;
    }
}