public class DmlDemo {
    //STANDARD ACCOUNT OBJECTINE FIELD EKLENDI//
    public static void dmlInsertDemo_stndObj() {
        Account acc = new Account();
        acc.Name = 'SoftInnonovas';
        acc.Site = 'www.softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';

        insert acc;
        system.debug(acc);
    }
    //CUSTOM OBJECTE FIELD EKLENDI//
    public static void dmlInsertDemo_cstmdObj(){
        Salesforce_project__c sp = new Salesforce_project__c();
        sp.project_name__c = 'Teach DML to Falcons';
        sp.Description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);
    }
    //INSERTING & UPDATING TOGETHER//
    public static void dmlUpdateDemo_1(){
        Account acc = new account();
        acc.Name = 'S';
        insert acc;
        system.debug(' Inserted ' + acc);
        acc.Name = 'Salesforce Inc';
        update acc;
        system.debug(' updated ' + acc);
    }
    //CHANGING ACCOUNT NAME BY USING SOQL//
    public static void dmlUpdateDemo_3(){
        account acc = [Select name from account WHERE name = 'SoftInnovas' order by CreatedDate desc limit 1];
        acc.name = 'SoftInnovas Inc.';

        update acc;
        system.debug(' updated acc ' + acc);
    }
    public static void dmlUpdateDemo_2(){
        account acc = [Select name from account WHERE name = 'SoftInnovas Inc.' limit 1];
        system.debug('acc id is ' + acc.id);

        //create a contact for this account//
        contact cnt = new Contact();
        cnt.lastname = 'Biden';
        cnt.AccountId = acc.id;

        insert cnt;
    }
    public static void dmlMultipleRecordInsert_right() {
        list<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlMultipleRecordInsert2_right() {
        list<account> listAcc = new list<account>();

        account acc = new account();
        acc.Name = 'SoftInnovas 30-Apr22 v0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 150; i++){
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 30-Apr22 v'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list ' + listAcc.size());

        if(!listAcc.isEmpty()){
            insert listAcc;
        }

    }
}
