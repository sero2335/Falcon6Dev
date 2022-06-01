public class demoDmlClass {
    public demoDmlClass() {
        System.debug(' Welcome to the world of SOQL. Please enter the key character to search.');
    }
    public void dmlInsert(string keychar){
        List<Account> accntName = [Select id, name, (select name from Contacts WHERE name LIKE :keychar) from Account];
        List<Contact> UpdatedCont = new  List<Contact>();
        
        for (Account eachAcc : accntName) {
            for (Contact eachCon : eachAcc.Contacts) {
                System.debug(eachCon.Id + ' : ' + eachCon.Name);

                Contact newCont = new Contact();
                newCont.LastName = eachCon.Name + ' Copied from an Accont';
                System.debug(newCont.LastName);
                UpdatedCont.add(newCont);
            }
        }
        insert UpdatedCont; 
    }
}
