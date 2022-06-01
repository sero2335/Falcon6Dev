
// CALCULATING THE AGE IN DAYS, MONTHS, YEARS ASSIGNMENT //

date birthdate = date.newInstance(1981, 6, 12);
date todaysdate = date.today();

integer ageIndays = birthdate.daysBetween(todaysdate);
integer ageInMonths = birthdate.monthsBetween(todaysdate);
integer ageInYears = integer.valueof(ageInMonths/12);

system.debug('Age in days is : ' + ageIndays + '.');
system.debug('Age in months is : ' + ageInMonths + '.');
system.debug('Age in years is : ' + ageInYears + '.');




