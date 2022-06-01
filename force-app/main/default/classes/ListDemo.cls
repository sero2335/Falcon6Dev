public class ListDemo {
    public static string candidateList(integer indx) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('Candidates are ' + listCandidates);

        string retrnString = '';
        //retrnString = listCandidates[indx];
        if (indx >=0 && indx < listCandidates.size()) {
            retrnString = listCandidates[indx];
        } else {
            retrnString = 'No such value found';
        }
        return retrnString;
    }

    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);

        integer index3Value = listInteger.get(3);
        integer index3Valuev2 = listInteger[3];
        System.debug('index 3 value is ' + index3Value);
        System.debug('List of random Integers are ' + listInteger);
    }

    public static void allCats(){
        cat falconsCat = new cat('fluffykins', 'white');
        cat vitapCat = new cat('Simba', 'Brown');

        List<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(ZehrasCat);
    }
}
