public class SOQL_Class {
    // HOMEWORK 24 - 24 - Belirtilen SOQL sorgularını "SOQL_Class" ında belirtilen metodun içinde yapınız//
    public static void account_SOQL() {
        // 1- Telefon numarasi olan hesaplarin listesi//
        list<Account> listAccWithPhone = [Select PHONE from Account WHERE phone != null];
        System.debug('Telefon numarasi olan hesaplarin listesi ' + listAccWithPhone);
        // 2- Isminin sonunda 'a' gecen hesaplarin listesi//
        list<Account> listAccEndsWithA = [Select ID, NAME from Account WHERE name like '%A'];
        System.debug('Isminin sonunda \'a\' gecen hesaplarin listesi ' +listAccEndsWithA);
    }
    public static void account_SOQL2(string s){
        // 3- Isminin herhangi bir yerinde atanan string parametre bulunan hesaplarin listesi//
        list<Account> listAccContainsS = [Select NAME from Account WHERE name like '%s%'];
        System.debug('Isminin icerisinde \'Oil\' kelimesi bulunan hesaplarin listesi ' + listAccContainsS);
    }
    public static void contact_SOQL(){
        // 4- Homephone ve Phone u bos olan contact larin listesi//
        list<Contact> listContWithNoPhAndHp = [Select HOMEPHONE, PHONE from Contact WHERE HOMEPHONE=null and PHONE=null];
        System.debug('Homephone ve Phone u bos olan contact larin listesi ' + listContWithNoPhAndHp);
    }
    public static void account_SOQL3(){
        // 5- Annual Revenue su olan hesaplarin AR'lerinin toplami//
        list<Account> TotalAnnRevenue = [Select ANNUALREVENUE from Account WHERE ANNUALREVENUE != null];
        decimal sum = 0;
        for (Account eachAccount : TotalAnnRevenue) {
            Decimal d1 = eachAccount.AnnualRevenue;
            sum += d1;
        }
        System.debug('Annual Revenue su olan hesaplarin AR\'lerinin toplami ' + sum);
    }
}
