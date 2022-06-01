trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}





    














    /*TURKISH REVISION HOMEWORK 27. 
    Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.*/

    /* if (trigger.isBefore && trigger.isInsert) {
        for (Contact eachCon : trigger.new){
            if (eachCon.FirstName == null) {
                System.debug('Bu record\'da First Name yazilmadi. Name sadece Last Name = ' + eachCon.LastName +'ndan oluşuyor.');
            }
        }
    } */















   /*  if (Trigger.isBefore && Trigger.isUpdate) {
        for (Contact cnt : trigger.new) {
            if (cnt.LastName != trigger.oldMap.get(cnt.Id).LastName) {
                System.debug('Last Name is changed - ' + trigger.oldMap.get(cnt.Id).LastName + ' is changed to ' + cnt.LastName);
            }
        }
    } */

  
  
    
    /*  if (trigger.isBefore) {
        if (trigger.isInsert) {
            System.debug(' ==========BEFORE INSERT==========');
            System.debug(' Trigger.new before insert => ' + trigger.new);
            System.debug(' Trigger.old before insert => ' + trigger.old);
            System.debug(' Trigger.newMap before insert => ' + trigger.newMap);
            System.debug(' Trigger.oldMap before insert => ' + trigger.oldMap);
        }
        if (trigger.isUpdate) {
            System.debug(' ==========BEFORE UPDATE==========');
            System.debug(' Trigger.new before update => ' + trigger.new);
            System.debug(' Trigger.old before update => ' + trigger.old);
            System.debug(' Trigger.newMap before update => ' + trigger.newMap);
            System.debug(' Trigger.oldMap before update => ' + trigger.oldMap);
        }
    }    
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            System.debug(' ==========AFTER INSERT==========');
            System.debug(' Trigger.new after insert => ' + trigger.new);
            System.debug(' Trigger.old after insert => ' + trigger.old);
            System.debug(' Trigger.newMap after insert => ' + trigger.newMap);
            System.debug(' Trigger.oldMap after insert => ' + trigger.oldMap);
        }
        if (trigger.isUpdate) {
            System.debug(' ==========AFTER UPDATE==========');
            System.debug(' Trigger.new after update => ' + trigger.new);
            System.debug(' Trigger.old after update => ' + trigger.old);
            System.debug(' Trigger.newMap after update => ' + trigger.newMap);
            System.debug(' Trigger.oldMap after update => ' + trigger.oldMap);
        }
    }     */


    /* if (Trigger.isAfter) {
        System.debug('trigger.new after insert/update = ' + trigger.new);
    } */
    /*
    if (trigger.isBefore) {
        system.debug('We are in BEFORE Trigger');
        if (trigger.isInsert) {
            system.debug('Before insert trigger callled');
        }
        if (trigger.isUpdate) {
            system.debug('Before update trigger called.');
        }
    }
    if (trigger.isAfter) {
        system.debug('We are in AFTER Trigger. SBNC.');
        if (trigger.isInsert) {
            system.debug('AFTER insert trigger callled');
        }
        if (trigger.isUpdate) {
            system.debug('AFTER update trigger called.');
        }
    }*/
