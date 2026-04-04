/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
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