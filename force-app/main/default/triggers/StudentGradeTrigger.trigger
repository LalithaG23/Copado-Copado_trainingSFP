trigger StudentGradeTrigger on Student__c (before insert, before update) {
    for (Student__c student : Trigger.new) {
        if (student.Marks__c != null) {
            if (student.Marks__c >= 90) {
                student.Grade__c = 'A';
            } else if (student.Marks__c >= 80) {
                student.Grade__c = 'B';
            } else if (student.Marks__c >= 70) {
                student.Grade__c = 'C';
            } else if (student.Marks__c >= 60) {
                student.Grade__c = 'D';
            } else if (student.Marks__c >= 50) {
                student.Grade__c = 'E';
            } else {
                student.Grade__c = 'F';
            }
        } else {
            student.Grade__c = null; // Clear the grade if marks are null
        }
    }
}