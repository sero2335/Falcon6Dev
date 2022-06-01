public class MathPractice {
    public decimal practiceOne(Decimal length, Decimal width) {

        // TASK 11 - FINDING PERIMETER //

        Decimal perimeter = 2*(length + width);
        system.debug('The perimeter of the rectangle is ' + perimeter + '.');
        return perimeter;
    }
       
        // TASK 12 - VUCUT KILO INDEKSI HESAPLAMA //

    public decimal practiceTwo(Decimal boy, Decimal kilo) {
        Decimal bodyMassIndex = kilo / (boy * boy);
        system.debug('Your body mass index is ' + bodyMassIndex + '.');
        return bodyMassIndex;

    }


        
    // TASK 13 - FINDING AVERAGE OF TWO NUMBERS //

    public decimal practiceThree(Decimal num1, Decimal num2) {
        Decimal average = (num1 + num2) / 2;
        system.debug('The average is ' + average + '.');
        return average;
    }
         



        //TASK 14 - CUSTOMER BONUS RETURN //
    public decimal practiceFour(Decimal amount){
        Decimal bonus;

        if (amount <= 0) {
            system.debug(' Hatali bir deger girdiniz.');
        } else if (amount >= 0 && amount <= 49) {
            system.debug('50 dolardan az bir alisveris yaptiginiz icin Bonus kazanamadiniz.');
        } else if (amount >= 50 && amount <= 199){
            system.debug(amount + ' dolarlik bir alisveris yaptiginiz icin $10 bonus kazandiniz.');
        } else if (amount >= 200 && amount <= 499){
            system.debug(amount + ' dolarlik bir alisveris yaptiginiz icin $30 bonus kazandiniz.');
        }else if (amount >= 500){
            system.debug(amount + ' dolarlik bir alisveris yaptiginiz icin $50 bonus kazandiniz.');
        }
        return bonus;
    }




    // TASK 16 - SHOPPING & ORDERING BY SWITCH ON //

    public decimal practiceFive(String order, integer piece){
        integer price;

        switch on order {
            when 'ekmek' {
                price = 1;
            }
            when 'simit' {
                price = 2;
            }
            when 'kek' {
                price = 3;
            }
        }
        decimal totalprice = piece * price;
        system.debug(piece + ' adet ' + order + ' fiyati ' + totalprice + '$ dir.');
        return price;
    }



    // TASK 16 - SHOPPING & ORDERING BY IF ELSE //

    public decimal practiceFive2(String order, integer piece){
        integer price;
        
        if (order == 'ekmek') {
            price = 1;
        } else if (order == 'simit')  {
            price = 2;
        } else if (order == 'kek')  {
            price = 3;
        }
        
        decimal totalprice = piece * price;
        system.debug(piece + ' adet ' + order + ' fiyati ' + totalprice + '$ dir.');
        return price;
    }



         // TASK 18 - AREA & PERIMETER PRINTING WITH ROUNDING //

    public decimal practiceSix(decimal length, decimal width, string areaOrPerimeter){

        decimal result;

        if (areaOrPerimeter == 'Perimeter') {
            result = 2 * (length + width);
            integer round1 = Math.round(result); 
            System.debug(' The Perimeter of the reactangle is : ' + round1);

        } else if (areaOrPerimeter == 'Area') {
            result = length * width;
            integer round2 = Math.round(result);
            System.debug(' The Area of the reactangle is : ' + round2);
        } else {
            System.debug(' Please enter a valid process type!!');
        }
        return result;
    }


          // TASK 19 - PRACTICE SEVEN - VKI (BODY MASS INDEX) //
    public static string practiceSeven(decimal weight, decimal height){
        string result;
        decimal square;
        square = height.pow(2);
        decimal bmi1 = weight / square;
        decimal bmi2 = bmi1.setScale(1);
        System.debug(' Body Mass Index : ' + bmi2);

        if (bmi2 > 0 && bmi2 <= 18.4) {
            system.debug(' Underweight');
        } else if (bmi2 >= 18.5 && bmi2 <= 24.9) {
            system.debug(' Healthy');
        } else if (bmi2 >= 25 && bmi2 <= 29.9) {
            system.debug(' Overweight');
        } else {
            system.debug(' invalid data!! Please check the height and weight values you have entered!');
        } 
        return result;
    }


         // TASK 20 - PRACTICE EIGHT - SUM BETWEEN TWO NUMBERS //

    public static Integer practiceEight(Integer numb1, Integer numb2){
        integer sum = 0;

        for (Integer i = numb1; i <= numb2; i++){
            sum += i;

            if (numb1 == numb2) {
                sum = numb1 + numb2;
            }
        }
        System.debug('First Number : ' + numb1 + ' and ' + 'Second Number : ' + numb2);
        System.debug('The sum of all the numbers between ' + numb1 + ' and ' + numb2 + ' is : ' + sum);

        return sum;
    }

                    // HOMEWORK 23 - YAS HESAPLAMA //

    public static void ageCalculate(Map<String, Date> BirthDate){
        decimal yas = 0;

        for(string eachPerson : BirthDate.keySet()){
            date dgunu = BirthDate.get(eachPerson);
            yas = (dgunu.daysBetween(date.today())/360);
            yas = yas.setScale(1);
            system.debug(eachPerson + ' nin yasi ' + yas + ' \'dir');
        }
    }
}   

