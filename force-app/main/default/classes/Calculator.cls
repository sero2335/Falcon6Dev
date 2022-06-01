public class Calculator{
    
   public static void welcomeMessage(){
      system.debug('welcome to apex calC');
  }
  public static void printNewMessage(string msg){
      //use parameter variable name inside the method.
      system.debug(msg);
  }

  public static void printNewMessage2(string msg, Date dt){
      system.debug(msg);
      system.debug(dt);
  }
  //add method with 2 params
  public static integer add(integer a, integer b){
      integer sum = a + b;
      return sum;
  }
  //add method with 3 params
  public static integer add(integer a, integer b, integer c){
      return a+b+c;
  }
  public static integer add(List<integer> intList) {
      integer sum = 0;
      //10,15,20
      // sum = sum + 10;
      // sum = sum + 15;
      // sum = sum + 20;
      for (integer eachInt : intList) {
          system.debug('eachInt - ' + eachInt);
          sum += eachInt;
          system.debug('sum...' + sum);
      }
      return sum;
  }

   
   
   
      /* public static void welcomeMessage(){
        system.debug('welcome to Apex Calculator');
     }
     
     public static void printNewMessage(string msg){
         system.debug(msg);
     }


        //ADD METHOD WITH 2 PARAMETERS//
        
     public integer add(integer a, integer b){
         integer sum = a+b;
         return sum;
     }

        //ADD METHOD WITH 3 PARAMETERS//

     public integer add(integer int1, integer int2, integer int3){
        return int1+int2+int3;
     }
     
     
                     // FOR EACH LOOP //
     
     public static integer add(List<integer> intList){
         integer sum = 0;

         for (integer eachInt : intList) {
            System.debug('eachInt - ' + eachInt);
            sum += eachInt;
            System.debug(' sum... ' + sum);
         }
         return sum;
     } */
 }