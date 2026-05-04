/**
 * @description       : Solve the expression Day 4
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-04-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Expression {
    //Solve the expression having n value and x value
    // 1X + 2X + 3X + nX
    public integer solveExpression(integer n, integer x){
        integer sum = 0;
        for(integer i=1; i<=n; i++){
            sum = sum + (i*x);
        }
        return sum;
    }
}