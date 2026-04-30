/**
 * @description       : Student Mark Calculation
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-30-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class StudentGradeDIY {
    
    //Accept 3 inputs for Student Grade System
    integer total;
    integer average;
    string grade;
    
    public void calculateTotal(integer mark1, integer mark2, integer mark3)
    {
        total = mark1+mark2+mark3;
        system.debug ('Marks total = '+total);
    }
    
    public integer calculateAverage()
    {
        if(total != null)
        {
            average = (total*100)/300;
            system.debug('The Average Mark = '+average);
            return average;
        }
        else
        {
            system.debug('Total not calculated');
            return null;
        }
        
        
    }
    
    public void result()
    {
        if(average > 35)
        {
            system.debug('Pass');
        }
        else
        {
            system.debug('Fail');
        }
    }
    
    public void calculateGrade()
    {
        
        if (average > 90)
        {
            grade ='A';
        }
        else if (average > 50)
        {
            grade = 'B';
        }
        else if (average > 35)
        {
            grade = 'C';
        }
        else
        {
            grade = 'No Grade';
        }
        system.debug ('The Grade is = '+grade);
    }
    
    
    public void findMax(integer mark1, integer mark2, integer mark3) {
        
        // 🔹 Using if-else
        Integer maxIf;
        if (mark1 > mark2 && mark1 > mark3) {
            maxIf = mark1;
        } else if (mark2 > mark3) {
            maxIf = mark2;
        } else {
            maxIf = mark3;
        }

        System.debug('Max using if-else: ' + maxIf);

        // 🔹 Using ternary operator
        Integer tempMax = (mark1 > mark2) ? mark1 : mark2;  // Step 1
		Integer maxTernary = (tempMax > mark3) ? tempMax : mark3;  // Step 2

        System.debug('Max using ternary: ' + maxTernary);
    }
}