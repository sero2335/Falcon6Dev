public class myCity {
    public void stringMethod() {

        string saDev = 'I am a salesforce Developer';
        Boolean wordControl = saDev.contains('force');
        system.debug('The word force exist in the script? : ' + wordControl);

        integer numberOfCharacter = saDev.length();
        system.debug('The number of character in string is : ' + numberOfCharacter);

        string capitalLetters = saDev.toUpperCase();
        system.debug('The string as capital words : ' + capitalLetters);
    }
        
    
        // HOMEWORK 2 : DATE & TIME //

    public void dateMethod(){
        date today = date.today();
        system.debug('The date of today is : ' + today);

        datetime dtNow = datetime.now();
        system.debug('The date and time now is :' + dtNow);
        system.debug('The date and time after 50 hours will be : ' + dtNow.addHours(50));
    }

        // CITY INFORMATION ASSIGNMENT //

    public void cityInformation(){
        date foundation = date.newInstance(1824, 11, 1);
        system.debug('Foundation date of Mexico is : ' + foundation);

        Time sunRise = time.newInstance(7, 15, 00, 00);
        system.debug('The sunrise time in Mexico is : ' 
        + sunRise);

        date todaysDate = date.today();
        datetime before36Months = todaysDate.addMonths(-36);
        system.debug('The date of today is : ' + todaysDate);
        system.debug('The date before 36 months is : ' + before36Months);
    }

        // BIRTHDAY & THE SUM OF NUMBERS IN BD //










        // TASK 15 - MY FAVORITE LOCATIONS //

    public string favoriteCafe = '';
    public string favoritePark = '';
    public string favoriteMall = '';
    public string favoriteStore = '';

    public string myFavoriteLocations(string myCity){
        System.debug(' The most beatiful cafe in my city = ' + favoriteCafe + ', most beatiful park = ' +  favoritePark + ', most beautiful Mall = ' + favoriteMall + ', most beautiful store = ' + favoriteStore);

        return myCity;    
    }






     // TASK 17 - PRINTING A MESSAGE 10 TIMES BY FOR LOOP //

    public void printString(integer kk, string message){
        for (Integer i = 1; i <= kk; i++) {
            System.debug(i + ' ' + message);
        }

    }

}

