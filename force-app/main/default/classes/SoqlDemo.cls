public class SoqlDemo {
    public static void accountASQL_1() {

        List<Account> listAcc = [Select ID, name FROM account WHERE Name LIKE '%A'];
        System.debug(' Account List : ' + listAcc);

        Account acc = [select id, Name from Account ORDER by CreatedDate DESC LIMIT 1]; 
        System.debug(acc);
        System.debug(' The number of accounts in the query ' + listAcc.size());
    }

    public static void accountSoql_2() {
        Account latestAcc = [select name, phone, AccountNumber from account order by createdDate desc limit 1];
        system.debug('latest account created is ' + latestAcc);
        
        id accid = latestAcc.id;
        string accName = latestAcc.Name;
        string accPhone = latestAcc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + latestacc.AccountNumber);
    } 
    
    public static void accountSoql_3() {
        List<account> listAcc = [select id, name, phone, accountnumber from account order by CreatedDate DESC];
        system.debug('all accounts ' + listAcc);
            //11 records
        for (account eachAccount : listAcc) {
               //1st record for the 1st iteration. 
        id accid = eachAccount.id;
        string accName = eachAccount.Name;
        string accPhone = eachAccount.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + eachAccount.AccountNumber);
        system.debug('-------------------------------');
               
        }
    }
}
