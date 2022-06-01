public class dateTimeMethodsDemo {
   public void calculateAgeindays() {
        system.debug('calculate age in days');
        date birthdate = date.newinstance(1981, 6, 12);
        date todaydate = date.today();
        
        integer ageInDays = birthdate.daysBetween(todaydate);
        system.debug('my age in days is ' + ageInDays);
   }

    public void printSubscriptionEndDate() {
        date subscriptionStartDate = date.today();

        date SubscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date = '+ SubscriptionEndDate);

        integer endDateYear = SubscriptionEndDate.year();
        system.debug('subscription end date year is ' + endDateYear);

        integer endDateMonth = SubscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
    }
        
    public void printOfferEndDateTime(){
        datetime dtnow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on: ' + dtOfferEnd);

        date offerEndDate = dtOfferEnd.date();
        system.debug('offer end date is ' + offerEndDate);
    }

    
}