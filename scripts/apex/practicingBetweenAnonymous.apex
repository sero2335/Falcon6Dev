

// PRACTICING BETWEEN //

date untilNow = date.today();
date beganToWork = date.newinstance(1988, 12, 19);

integer dateOfJoin = beganToWork.daysBetween(untilNow);
system.debug('The employee has ' + dateOfJoin + ' days of experience.');

integer dateOfJoin2 = beganToWork.monthsBetween(untilNow);
system.debug('The employee has ' + dateOfJoin2 + ' months of experience.');

