public with sharing class AccountQueueableExample implements Queueable {
    public list<account> listAccount;

    public AccountQueueableExample(List<Account> accList){
        listAccount = accList;
    }
    //Mandatory method for queable class
    public void execute(QueueableContext qc){
        for (account a : listAccount) {
            a.Name = a.Name + ' -- SI';
        }
        update listAccount;
    }
}
