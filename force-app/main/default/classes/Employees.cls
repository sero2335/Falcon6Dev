public class Employees {
    public static void NameOfEmployees() {
       
        List<string> listENames = new List<string>();
        listENames.add('Jonathan');
        listENames.add('Sebastian');
        listENames.add('Alejandro');
        listENames.add('Abigail');
        listENames.add('David');

        listENames.sort();
        System.debug(' The name of the employees are : ' + listENames);
    }
}
