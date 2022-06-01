Car bm = new Car();
bm.CarColor='black';
system.debug('car color : ' + bm.CarColor);
bm.switchOn();
system.debug('car obj 1 = ' + bm);

Car lm = new car();
lm.CarColor='red';
system.debug('car color : ' + lm.CarColor);
lm.switchOn();
system.debug('car obj 1 = ' + lm);

Car vw = new car();
vw.CarColor='white';
vw.CarName='polo';
vw.drive();
vw.driveAtMaxSpeed();
system.debug(' vw = ' + vw);