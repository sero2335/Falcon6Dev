

// CALCULATING REMAINING DAYS //

date todaysdate = date.today();
date expirationdate = date.newInstance(2023, 9, 15);

integer remainingDays = todaysdate.daysBetween(expirationdate);

system.debug('The total number of days remaining for the expiration of the plan is : ' + remainingDays);


