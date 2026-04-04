/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-04-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class MathOperation {

    public Integer add(Integer a, Integer b) {
        Integer result = a + b;
        System.debug('Addition = ' + result);
        return result;
    }

    public Integer subtract(Integer a, Integer b) {
        Integer result = a - b;
        System.debug('Subtraction = ' + result);
        return result;
    }

    public Integer multiply(Integer a, Integer b) {
        Integer result = a * b;
        System.debug('Multiplication = ' + result);
        return result;
    }

    public Integer divide(Integer a, Integer b) {
        if (b == 0) {
            throw new ArithmeticException('Cannot divide by zero');
        }
        Integer result = a / b;
        System.debug('Division = ' + result);
        return result;
    }
}