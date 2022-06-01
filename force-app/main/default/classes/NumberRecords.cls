public class NumberRecords {
    
    public static void doesItExist() {
        
        List<integer> numList = new List<integer>{6, 8, 4, 12, 9, 56, 67};

        System.debug(' Numbers in the list are : ' + numList);
        System.debug(' Number => 12');
        System.debug(' Output : Number 12 exists in the list? : ' + numList.contains(12));
        System.debug(' Output : Number 5 exists in the list? : ' + numList.contains(5));
    }
}
