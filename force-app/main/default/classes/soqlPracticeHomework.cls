public class soqlPracticeHomework {
    public static void soqlPracticeHomework1() {
        // HW 1 - Write an SOQL to get the records of contact object, where the type of account is Prospect.
        List<Contact> ProspectAccList = [select ID, Name, Phone from Contact WHERE Account.type = 'Prospect'];
        system.debug(ProspectAccList);
    }

        // HW 2 - Write an SOQL to get the records of Salesforce Ticket, where the status of Salesforce Project is New //
    
    public static void soqlPracticeHomework2(){
        List<Salesforce_ticket__c> StatusNewList = [select ID, Name from Salesforce_ticket__c WHERE Salesforce_Project__r.status__c = 'New'];
        system.debug(StatusNewList);
    }

}
