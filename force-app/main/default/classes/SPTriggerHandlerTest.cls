@isTest
public class SPTriggerHandlerTest {
    @isTest
    private static void TestMethod1() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.project_name__c = 'Teach async to FALCONS';
        sp.Description__c = 'All 40% are great learners, still';

        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.project_name__c = 'Teach future to FALCONS';
        sp1.Description__c = 'All 40% are great learners, still';
        
        List<Salesforce_Project__c> lstSp = new List<Salesforce_Project__c>{sp, sp1};
        insert lstSp;

        set<id> spIds = new set<id> {sp.id, sp1.id};
        
        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
        
    }
}
