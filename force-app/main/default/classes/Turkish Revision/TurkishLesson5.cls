public class TurkishLesson5 {
    public static void listMetot() {

        List<string> dersList = new List<string>();
        dersList.add('Turkce');
        dersList.add('Fen Bilgisi');
        dersList.add('Tarih');

        system.debug(dersList); //Tum dersleri yansitacak
        system.debug(dersList.get(1)); //1. dizinde olan dersin ismini verecek//
        system.debug(dersList[2]); //2. dizinde olan dersin ismini verecek//
        system.debug(dersList.indexOf('Fen Bilgisi')); // Bu dersin sizin sayisini verecek//
        system.debug(dersList.isEmpty()); //Listsede birseyler varsa ki var, false donecek//
        system.debug('listemiz dolu iken d '+ dersList.isEmpty());
        system.debug('listemiz dolu iken d '+ !dersList.isEmpty()); 
        system.debug('listemizin eleman sayisi '+ dersList.size()); 

        List<integer> numList = new List<integer>{23,7,4,18};
        system.debug(numList);
        numList.sort(); //Kucukten buyuge siralama olacak//
        system.debug('sort metodu uygulaninca ' + numList);


    }
}
