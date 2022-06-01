TurkishLesson3 t3 = new TurkishLesson3();
t3.welcome();
t3.firstName = 'Serdar ';
t3.lastName = 'Caparoglu';
t3.className = 'batch 6';
system.debug('t3 objesi = > ' + t3);

TurkishLesson3 l3 = new TurkishLesson3();
l3.firstName = 'John ';
l3.lastName = 'Wick';
system.debug('l3 objesi => ' + l3);

TurkishLesson3 k3 = new TurkishLesson3();
k3.newCourse('KAPLAN');
system.debug('k3 objesi => ' + k3);

TurkishLesson3 j3 = new TurkishLesson3();
system.debug('j3 objesi => ' + j3);

TurkishLesson3 h3 = new TurkishLesson3();
string message1 = h3.ehliyet(12);
system.debug(message1);

string message2 = h3.ehliyet(22);
system.debug(message2);

TurkishLesson3 p3 = new TurkishLesson3();
p3.numberZero(-22);
p3.numberZero(200);
p3.numberZero(0);

