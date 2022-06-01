public class iterationExercise2 {
    public void getPerfectAverage(integer num1, integer num2) {
        System.debug(' input : num1 = ' + num1);
        System.debug(' input : num2 = ' + num2);
        integer total = num1;
        integer count = 1;

        for (Integer i = num1+1; i <= num2; i++) {
            total += i;
            count++;
        }

        integer mean = total/count;
        system.debug(' Output : ' + mean);

        System.debug(' Calculation : ');

        string n = '';
        for (Integer i = num1; i < num2; i++) {
            n += string.valueOf(i) + ' + ';
        }
        System.debug(n + num2 + ' = ' + total);
        System.debug('Total ' + count + ' numbers between ' + num1 + ' to ' + num2);
        System.debug(Total + ' / ' + count + ' = ' + mean);
    }
}
