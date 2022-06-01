trigger SalesforceProjectTriggerHandler on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if(trigger.isAfter && trigger.isInsert){
        System.debug('trigger called');
        //SalesforceProjectTriggerHandler.updateProjectDescription(Trigger.newMap.keyset());
        System.debug('Future method called already. Second method calling');
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);
    }

    if (trigger.isAfter && trigger.isUpdate) {
       //SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}