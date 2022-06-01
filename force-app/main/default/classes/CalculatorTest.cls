@isTest
public class CalculatorTest {
    @isTest
    private static void testMessages(){
        Calculator.welcomeMessage();
        Calculator.printNewMessage('message m test class');
        Calculator.printNewMessage2('msg', date.today());
    }
    @isTest
    public static void addTest(){
        integer i = 10;
        integer j = 15;
        integer calAdd = Calculator.add(i,j);
        system.assertEquals(25, calAdd);
    }
    @isTest
    private static void addTest2(){
        Integer calAdd = Calculator.add(10, 15, 20);
        system.assertEquals(45, calAdd);
    }
    @isTest
    public static void addTest3(){
        List<Integer> listInt = new List<Integer> {15,15,15};
        Integer calAdd = Calculator.add(listInt);
        system.assertEquals(45, calAdd);
    }
}
