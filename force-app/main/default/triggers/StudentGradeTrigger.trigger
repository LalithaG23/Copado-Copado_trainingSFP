trigger StudentGradeTrigger on Student__c (before insert) {
	for (Student__c student : Trigger.new) {
        if (student.Marks__c >= 90) {
            student.Grade__c = 'A';
        } else if (student.Marks__c >= 75) {
            student.Grade__c = 'B';
        } else if (student.Marks__c >= 50) {
            student.Grade__c = 'C';
        } else {
            student.Grade__c = 'F';
        }
    }
}