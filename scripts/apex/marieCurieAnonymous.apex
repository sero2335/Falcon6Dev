// MARIE CURIE ASSIGNMENT //

date today = date.today();
date marieCBD = date.newInstance(1867, 11, 7);

system.debug(' The date of today is : ' + today + ' and ' + 'The birthday of Marie Curie : ' + marieCBD);

integer dayMarie = marieCBD.daysBetween(today);
integer inYears1 = dayMarie/365;
system.debug(' The difference by considering the days : ' + inYears1);

integer monthMarie = marieCBD.monthsBetween(today);
integer inYears2 = monthMarie/12;
system.debug(' The difference by considering the months : ' + inYears2);

integer yearMarie = marieCBD.year();
integer yeartoday = today.year();
integer yeardifference = yeartoday - yearMarie;
system.debug(' The difference by considering the years : ' + yeardifference);

Boolean isLeapYear = date.isLeapYear(1867);
system.debug(' The year when Marie Curie was born is a Leap Year: ' + isLeapYear);



