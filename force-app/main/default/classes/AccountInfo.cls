public class AccountInfo {
    // HW 3 - Create one class called AccountInfo, which contains the method called showAccounts. This method should print all accounts' names and related oppotunities where the opportunity close date is in future.
    public static void showAccounts() {
        List<Account> AccWithOppNames = [SELECT name, (Select CloseDate FROM Opportunities WHERE CloseDate > today) from Account];

        for (Account AccountName : AccWithOppNames) {
            System.debug(AccountName);
            for (Opportunity relatedOpp : AccountName.Opportunities) {
            System.debug('Related Oppotunities name ' + relatedOpp);
            }
        }
    }
}
