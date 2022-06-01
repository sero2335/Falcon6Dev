public class AccountHandlerInfo {
    public static List<Account> insertNewAccount(List<String> prmList) {
        List<Account> AccList = new List<Account>();
        if (!prmList.isEmpty()) {
            for (string eachAcc : prmList) {
                Account acc = new Account();
                acc.Name = eachAcc;
                AccList.add(acc);
            }
            insert AccList;
            return AccList;
        } else {
            System.debug('Please check to make sure that the parameter is not blank');
            return null;
        }
    }
}
