public class TurkishLesson2 {
    public void VariableDefine() {
        string name1 = 'Jhon';
        integer number1 = 11;
        boolean isCheck = true;
        
        system.debug('Name is : ' + name1);
        system.debug('Number is : ' + number1);
        system.debug('isCheck : ' + isCheck);
        
        system.debug('Name is : ' + name1 + ',' + ' Number is : ' + number1 + ',' + ' isCheck : ' + isCheck);
    }

    public string text = 'I am learning Salesforce';
    private integer counter = 0;

    public void privateMethod(){
        system.debug('private counter : ' + counter);
        system.debug('text : ' + text);           
    }

    public void welcome(string nm){
        system.debug(nm + ' hosgeldin.');
    }
        
    public decimal price(String kName, Decimal kFiyat, integer adet){
        Decimal total = kFiyat * adet;
        system.debug(kName + ' kitabindan ' + adet + ' adet aldiniz. Odeyeceginiz ucret = ' + total);
        return total;
    }

    public decimal price2(String foodname, Decimal bFiyat, integer kilo){
        Decimal total = bFiyat * kilo;
        system.debug(foodname + ' tatlisindan ' + kilo + ' kilo aldiniz. Afiyet olsun. Odeyeceginiz ucret : ' + total);
        return total;
    }
           
    public decimal price3(string itemToSell, Decimal iPrice, integer amount){
        decimal total2 = iPrice * amount;
        system.debug(' You bought ' + amount + ' kg ' + itemToSell + '.' + ' You will be paying ' + total2 + ' dollar.');
        return total2;
    }

















    public decimal price4(string satilacakSey, decimal fiyat, integer miktar){
        decimal total4 = fiyat * miktar;
        system.debug(miktar + ' kg ' + satilacakSey + ' aldiniz. ' + 'You will be paying ' + total4 + ' dollars.');
        return total4;
    }
    
}
