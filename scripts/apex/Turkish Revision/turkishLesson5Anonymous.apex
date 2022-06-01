integer a = 15;
integer b = 21;

//2 sayidan buyuk olanini getiren metot//
integer bsayi = math.max(a, b);
system.debug('buyuk sayi : ' + bsayi);

//2 sayidan kucuk olanini getiren metot//
integer ksayi = math.max(a, b);
system.debug('kucuk sayi : ' + ksayi);

//floor ondalik kismi siler//
decimal c = 23.63456; 
decimal d = math.floor(c);
system.debug('floor d = ' + d);

//mathTooLong ondalik kismi yuvarlar//
Decimal e = math.roundToLong(c);
system.debug('round e = ' + e);

//Bilgisayar rastgele (random) 1 den 10 kadar 1 sayi getirsin.
decimal randomNum = Math.floor(Math.random() * 10 + 1);
system.debug(randomNum);

decimal randomNum = Math.ceil(Math.random() * 10);
system.debug(randomNum);
system.debug(randomNum);


TurkishLesson5.listMetot();



