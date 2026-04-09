/**
 * @description       : Student Mark Calculation
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-09-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class StudentMarkCalc {

    StudentData data;
    Integer total;
    Integer average;
    String grade;

    public StudentMarkCalc(StudentData data) {
        this.data = data;
    }

    public void calculateTotal() {
        total = data.physicsMark + data.chemistryMark + data.mathMark;
        System.debug('Total marks: ' + total);
    }

    public void calculateAverage() {
        average = total / 3;
        System.debug('Average marks: ' + average);
    }

    public void calculateGrade() {
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
        System.debug('Grade: ' + grade);
    }
}