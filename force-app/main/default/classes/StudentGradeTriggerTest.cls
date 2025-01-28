@isTest
public class StudentGradeTriggerTest {
    @isTest
    static void testStudentGradeTrigger() {
        // Test data setup
        List<Student__c> students = new List<Student__c>{
            new Student__c(Name = 'Student A', Marks__c = 95),
            new Student__c(Name = 'Student B', Marks__c = 85),
            new Student__c(Name = 'Student C', Marks__c = 75),
            new Student__c(Name = 'Student D', Marks__c = 65),
            new Student__c(Name = 'Student E', Marks__c = 55),
            new Student__c(Name = 'Student F', Marks__c = 45)
        };
        
        // Insert students
        insert students;
        
        // Verify grades
        students = [SELECT Name, Marks__c, Grade__c FROM Student__c];
        System.assertEquals('A', students[0].Grade__c);
        System.assertEquals('B', students[1].Grade__c);
        System.assertEquals('C', students[2].Grade__c);
        System.assertEquals('D', students[3].Grade__c);
        System.assertEquals('E', students[4].Grade__c);
        System.assertEquals('F', students[5].Grade__c);
        
        // Update student marks
        students[0].Marks__c = 50;
        update students[0];
        
        // Verify updated grade
        students = [SELECT Name, Marks__c, Grade__c FROM Student__c WHERE Name = 'Student A'];
        System.assertEquals('E', students[0].Grade__c);
    }
}