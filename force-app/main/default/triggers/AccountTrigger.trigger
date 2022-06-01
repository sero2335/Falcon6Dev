trigger AccountTrigger on Account (before insert, before update, after insert,after update) {
   
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
}
    


    /* if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    } */

    //The tigger code below was used with the AccountTriggerHandler class//
    /* if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.Old, trigger.NewMap, trigger.OldMap);
        system.debug('before insert/update trigger end');
    } */



























/*     if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        map<id, account> newAccountMap = trigger.newmap;
        map<id, account> oldAccountMap = trigger.oldmap;
        for(account eachAcc: trigger.new){
            boolean updateDesc = false; // This line is a FLAG //
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(trigger.isUpdate){
                Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    } */
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   /*  if (trigger.isAfter && trigger.isUpdate) {

        Map<id, Account> newAccMap = trigger.newMap;
        Map<id, Account> oldAccMap = trigger.oldMap;

        Set<id> setOfAccIds = newAccMap.keySet();
        integer countWebsiteUpdated = 0;
        for (ID eachId : setOfAccIds) {
            
            Account oldAcc = oldAccMap.get(eachId);
            string oldWebsite = oldAcc.Website;

            Account newAcc = newAccMap.get(eachId);
            string newWebsite = newAcc.Website;

            if (oldWebsite != newWebsite) {
                System.debug('For Account ' + newAcc.Name + 'New Website is ' + newAcc.Website);
                countWebsiteUpdated++;
            }
        }
        System.debug('# of account website updated = ' + countWebsiteUpdated);
    }
     */
    
    
    /* if (trigger.isAfter && trigger.isUpdate) {

        Map<id, Account> newAccMap = trigger.newMap;
        Map<id, Account> oldAccMap = trigger.oldMap;

        Set<id> setOfAccIds = newAccMap.keySet();

        for (ID eachId : setOfAccIds) {
            System.debug('================');
            System.debug('each Id = ' + eachId);

            Account newAccount = newAccMap.get(eachId);
            System.debug('New Account name = ' + newAccount.name);

            Account oldAccount = oldAccMap.get(eachId);
            System.debug('Old Account name = ' + oldAccount.name);
        }
    } */
    
    
    
    
    
    
    
    
    
    
    /* Map<id, Account> trgNewMap = trigger.newMap;
    Map<id, Account> trgOldMap = trigger.OldMap;

    if (trigger.isBefore && trigger.isInsert) {
        System.debug('========BEFORE INSERT=======');
        System.debug('Before insert OLD MAP = ' + trgOldMap);
        System.debug('Before insert NEW MAP = ' + trgNewMap);
    }

    if (trigger.isAfter && trigger.isInsert) {
        System.debug('========AFTER INSERT=======');
        System.debug('After insert OLD MAP = ' + trgOldMap);
        System.debug('After insert NEW MAP = ' + trgNewMap);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('========BEFORE UPDATE=======');
        System.debug('Before update OLD MAP = ' + trgOldMap);
        System.debug('Before update NEW MAP = ' + trgNewMap);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('========AFTER UPDATE=======');
        System.debug('After update OLD MAP = ' + trgOldMap);
        System.debug('After update NEW MAP = ' + trgNewMap);
    } */

   /*  if(trigger.isAfter){
        if(trigger.isUpdate){
            List<account> oldAccounts = trigger.old;
            List<account> newAccounts = trigger.new;

            for(account oldAcc: oldaccounts){
                system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
            }
            for(account newAcc: newaccounts){
                system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
            }
        }
    } */



    /* if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.old before insert = ' + trigger.old);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.old after insert = ' + trigger.old);
    }

    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.old before update = ' + trigger.old);
    }
    if (trigger.isUpdate && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.old after update = ' + trigger.old);
    } */


    /* if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    } */

       /* if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    } */
    /* if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('---------isInsert && isBefore START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isInsert && isBefore END------------');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('---------isInsert && isAfter START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isInsert && isAfter END------------');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('---------isUpdate && isBefore START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isUpdate && isBefore END------------');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('---------isUpdate && isAfter START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isUpdate && isAfter END------------');
    } */




    /*
    List<Account> newAccounts = trigger.new;
    if (Trigger.isAfter) {
        System.debug(' All new accounts - ' + newAccounts);
    }*/
    
    /*
    if (Trigger.isAfter) {
        System.debug('trigger.new after insert/update = ' + trigger.new);
    }
    */
    /*
    if (Trigger.isInsert) {
        System.debug('before insert account trigger fired');
    }

    if (Trigger.isUpdate) {
        System.debug('before update trigger called');
    }
    */



    /* //BEFORE INSERT BEFORE UPDATE//
    System.debug('before insert account trigger fired');
    System.debug('before update trigger called');
    */


    /* //BEFORE INSERT//
    System.debug('before insert account trigger fired');
    */


    /*
    //before insert, after insert//
    System.debug('before insert account trigger fired');

    System.debug('trigger.isbefore = ' + trigger.isbefore);
    System.debug('trigger.isAfter = ' + trigger.isAfter);

    if (Trigger.isAfter) {
        System.debug('after insert trigger called');
    }

    if (Trigger.isBefore) {
        System.debug('before insert account trigger fired');
    }
    System.debug('----------------------------------'); 
    */
