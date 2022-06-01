trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
  
    /*     if (trigger.isBefore && trigger.isUpdate) {
        OpportunityTriggerHandler.OppCloseDateValidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    } */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*TURKISH REVISION HOMEWORK 28. 
    Bir Opportunity update edildiğinde description bölümünü aşağıda görülen şekilde düzenleyen bir trigger tasarlayınız.*/
    
   /*  if (trigger.isBefore && trigger.isUpdate) {
        for (Opportunity eachOpp : trigger.new) {
           
            decimal oldAmount = trigger.oldMap.get(eachOpp.id).Amount;
            string oldStgNm = trigger.oldMap.get(eachOpp.id).StageName;

            if (eachOpp.Amount != oldAmount && eachOpp.StageName != oldStgNm) {
                eachOpp.Description = ' Stage updated : Old Stage => ' + oldStgNm + ' and New Stage => ' + eachOpp.StageName + ' & Amount updated : Old Amount => ' + oldAmount + ' and New Amount => ' + eachOpp.Amount;
            } else if ( eachOpp.StageName != oldStgNm) {
                eachOpp.Description = ' Stage updated : Old Stage => ' + oldStgNm + ' and New Stage => ' + eachOpp.StageName + ' & Amount not updated';
            } else if (eachOpp.Amount != oldAmount) {
                eachOpp.Description = ' Amount updated : Old Amount => ' + oldAmount + ' and New Amount => ' + eachOpp.Amount + ' & Stage not updated';
            } else {
                eachOpp.Description = ' Record updated but Stage and Amount not updated';
            }
        }
    } */
}
