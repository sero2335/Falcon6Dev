public  class OpportunityTriggerHandler {
    public static void OppCloseDateValidation(List<Opportunity> oppTriggerNew,
                                              List<Opportunity> oppTriggerOld,
                                              Map<id, Opportunity> oppTriggerNewMap,
                                              Map<id, Opportunity> oppTriggerOldMap) {

       for (Opportunity eachOpp : oppTriggerNew) {
            Opportunity oldOpp = oppTriggerOldMap.get(eachOpp.id);
            if (eachOpp.CloseDate < oldOpp.CloseDate) {
                eachOpp.CloseDate.addError('Close Date can not be updated to less than what already provided');
            }
       }                                         
    }
}
