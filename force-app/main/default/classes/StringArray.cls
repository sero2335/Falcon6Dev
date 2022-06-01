public class StringArray {
    public static List<string> ganerateStringarray(integer x) {

        List<String> stringList = new List<String>();

        string format;

        for (Integer i = 0; i < x; i++) {
            format = ' Test ' + i;
            stringList.add(format);
        }
        return stringList;
    }
}
