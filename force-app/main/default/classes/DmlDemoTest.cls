@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id,name from Account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnonovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlDemoUpdate2Test() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        List<Contact> listCnt = [select id,name from Contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].Name);
    }
}
