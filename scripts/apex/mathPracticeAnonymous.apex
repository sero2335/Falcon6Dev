MathPractice p1 = new MathPractice();
decimal cevre = p1.practiceOne(3.5, 4.6);
system.debug('Dikdortgenin cevre uzunlugu : ' + cevre + '.');


MathPractice p2 = new MathPractice();
decimal vki = p2.practiceTwo(1.75, 95.5);
system.debug('Vucut kitle indeksiniz : ' + vki + '.');


MathPractice p3 = new MathPractice();
decimal ortalama = p3.practiceThree(88, 12);
system.debug('88 ve 12 nin  ortalamasi : ' + ortalama + '.');


MathPractice bns = new MathPractice();
bns.practiceFour(-25);
bns.practiceFour(36);
bns.practiceFour(121);
bns.practiceFour(289);
bns.practiceFour(576);




MathPractice p5 = new MathPractice();
p5.practiceFive('ekmek', 10);
p5.practiceFive('simit', 8);
p5.practiceFive('kek', 5);


MathPractice apObj = new MathPractice();
apObj.practiceSix(5.25, 10.65, 'Perimeter');
apObj.practiceSix(5.25, 10.65, 'Area');
apObj.practiceSix(5.25, 10.65, 'Circumference');

MathPractice.practiceSeven(50, 1.80);
MathPractice.practiceSeven(70, 1.70);
MathPractice.practiceSeven(95, 1.79);
MathPractice.practiceSeven(200, 1.80);




MathPractice.practiceEight(10, 20);
MathPractice.practiceEight(20, 10);
MathPractice.practiceEight(50, 50);




Map<String, Date> BirthDate = new Map<String, Date>();

BirthDate.put('Jonathan', date.newInstance(1975, 05, 13));
BirthDate.put('Alejandro', date.newInstance(1987, 09, 01));
BirthDate.put('Maria Jose', date.newInstance(2008, 04, 24));

MathPractice.ageCalculate(BirthDate);






