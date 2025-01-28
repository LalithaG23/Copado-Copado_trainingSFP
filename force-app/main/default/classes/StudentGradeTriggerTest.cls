@isTest
public class StudentGradeTriggerTest {
    @isTest
    static void testGradeCalculation() {
        // Test for Grade A
        Student__c studentA = new Student__c(Marks__c = 95);
        insert studentA;
        studentA = [SELECT Grade__c FROM Student__c WHERE Id = :studentA.Id];
        System.assertEquals('A', studentA.Grade__c);

        // Test for Grade B
        Student__c studentB = new Student__c(Marks__c = 80);
        insert studentB;
        studentB = [SELECT Grade__c FROM Student__c WHERE Id = :studentB.Id];
        System.assertEquals('B', studentB.Grade__c);

        // Test for Grade C
        Student__c studentC = new Student__c(Marks__c = 60);
        insert studentC;
        studentC = [SELECT Grade__c FROM Student__c WHERE Id = :studentC.Id];
        System.assertEquals('C', studentC.Grade__c);

        // Test for Grade F
        Student__c studentF = new Student__c(Marks__c = 40);
        insert studentF;
        studentF = [SELECT Grade__c FROM Student__c WHERE Id = :studentF.Id];
        System.assertEquals('F', studentF.Grade__c);
    }
}