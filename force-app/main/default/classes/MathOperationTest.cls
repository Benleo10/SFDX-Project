/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-07-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
private class MathOperationTest {

    @isTest
    static void addTest() {

        MathOperation obj = new MathOperation();
        Integer result = obj.add(80, 20);
        System.assertEquals(100, result, 'Addition not happened');
      
    }

    @isTest
    static void subtractTest() {
        MathOperation obj = new MathOperation();
        Integer result = obj.subtract(50, 20);
        System.assertEquals(30, result, 'Subtraction not correct');
    }

    @isTest
    static void multiplyTest() {
        MathOperation obj = new MathOperation();
        Integer result = obj.multiply(5, 4);
        System.assertEquals(20, result, 'Multiplication not correct');
    }

    @isTest
    static void divideTest() {
        MathOperation obj = new MathOperation();
        Integer result = obj.divide(20, 4);
        System.assertEquals(5, result, 'Division not correct');
    }


    
}