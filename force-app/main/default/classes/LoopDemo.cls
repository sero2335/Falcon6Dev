public class LoopDemo {
    public void print_it_while() {
        integer count = 1;
        while (count <= 25) {
            system.debug(count);
            count++;
        }
    }

    public void print_N_numbers(integer n) {
        for (Integer i = 0; i < n; i++) {
            System.debug(i);                     
        }
    }

    public void print_sum_N_numbers(integer n) {
        integer sum = 0;
        for (Integer i = 1; i <=n; i++) {
        sum += i;
        }
        System.debug(sum);
    }


}
