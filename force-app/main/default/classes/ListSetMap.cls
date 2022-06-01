public class ListSetMap {
    public static void practiceOne() {

        /*21. "ListSetMap" adında bir Class ve içerisinde "practiceOne" adında static bir method oluşturun. Method içerisine elemanları "Ankara, İstanbul, London, Paris, New York, Tokyo, Antalya, London, Paris, New York, Tokyo" olan bir liste oluşturun. Aşağıdaki verilen adımları uygulayarak her adımı system.debug yardımı ile developer consol üzerinden gözlemleyin.*/
        
        //Listenin boyutunu kontrol edin.
        List<string> cityName = new List<string>{'Ankara','İstanbul','London','Paris','New York','Tokyo','Antalya','London','Paris','New York','Tokyo'};

        //Listenin boyutunu kontrol edin.
        integer sz = cityName.size();
        system.debug(' 1) Listenin boyutu = > ' + sz);

        //Listenin boş olup olmadığını kontrol edin.
        Boolean bos = cityName.isEmpty();
        system.debug(' 2) Liste bos mu? = > ' + bos);      
        
        //Listenin 7. elemanını (size'a göre) kontrol edin.
        string eleman7 = cityName.get(6);
        system.debug(' 3) Size\'a gore kumenin 7. eleman hangisi ? = > ' + eleman7);      

        //Listeyi oluşturacağınız bir "Set'e" ilgili methodla ekleyin.
        Set<string> citySet = new Set<string>();
        citySet.addAll(cityName);
        System.debug(' 4) The set list is => ' + citySet);
       
    }

       //HOMEWORK 22 - PUTTING ODD AND EVEN NUMBERS IN DIFFERENT SETS//

   public static void practiceTwo(List<integer> Tamsayi){

        Set<integer> OddNumbersSet = new Set<integer>();
        Set<integer> EvenNumbersSet = new Set<integer>();

        for (integer numbers : Tamsayi) {
            if (Math.mod(numbers, 2) == 0) {
                EvenNumbersSet.add(numbers);
            } else {
                OddNumbersSet.add(numbers);
            }
            system.debug('The set for the Odd Numbers ==> ' + OddNumbersSet);
            system.debug('The set for the Even Numbers ==> ' + EvenNumbersSet);
        }
   } 
}


