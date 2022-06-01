public class ListOfOdds {
    public ListOfOdds() {
        system.debug('Below, you will see a list of Odd Numbers!!');
    }

    public void listOfOddNumbers(integer numb){

        List<integer> listOddN = new List<integer>();

        for (Integer i = 1; i < numb; i++) {
            
            if ( math.mod(i, 2) == 1) {
            listOddN.add(i);    
            }
        }
        system.debug(listOddN);
    }
}
