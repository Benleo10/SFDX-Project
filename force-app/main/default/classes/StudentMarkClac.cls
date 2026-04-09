/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-09-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class StudentMarkCalc {

    string name;
    integer physicsMark;
    integer chemistryMark;
    integer mathMark;
    integer total;
    integer result;
    integer average;
    string grade;

public StudentMarkClac(String name, Integer physicsMark, Integer chemistryMark, Integer mathMark) {
        this.name = name;
        this.physicsMark = physicsMark; 
        this.chemistryMark = chemistryMark;
        this.mathMark = mathMark;
}

public static void calculateTotal() {
    total = physicsMark + chemistryMark + mathMark;
    system.debug('Total marks: ' + total);
}

public static void calculateAverage() {
    average = total / 3;
    system.debug('Average marks: ' + average);
}

public static void calculateGrade() {
    if (average >= 90) {
        grade = 'S';
    } else if (average >= 80) {
        grade = 'A';
    } else if (average >= 70) {
        grade = 'B';
    } else if (average >= 50) {
        grade = 'C';
    } else {
        grade = 'No Grade';
    }
    system.debug('Grade: ' + grade);
}

}