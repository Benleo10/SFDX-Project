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
        if (data == null) {
            throw new IllegalArgumentException('StudentData cannot be null');
        }
        // Default any null marks to 0 to avoid NPEs in arithmetic
        if (data.physicsMark == null) data.physicsMark = 0;
        if (data.chemistryMark == null) data.chemistryMark = 0;
        if (data.mathMark == null) data.mathMark = 0;
        this.data = data;
    }

    public void calculateTotal() {
        total = (data.physicsMark != null ? data.physicsMark : 0)
              + (data.chemistryMark != null ? data.chemistryMark : 0)
              + (data.mathMark != null ? data.mathMark : 0);
        System.debug('Total marks: ' + total);
    }

    public void calculateAverage() {
        // Safe divide based on number of subjects; integer division by design
        Integer subjectCount = 3;
        if (total == null) {
            calculateTotal();
        }
        average = total / subjectCount;
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