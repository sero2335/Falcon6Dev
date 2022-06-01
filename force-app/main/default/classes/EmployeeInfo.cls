public class EmployeeInfo {
    public static String showInfo(integer empNumber) {

        string employeeName= '';
        Map<integer, String> employeeMap = new Map<integer, String>();

        employeeMap.put(001, 'Muhammed');
        employeeMap.put(002, 'Eymen');
        employeeMap.put(003, 'Esma');
        employeeMap.put(004, 'Nur');

        if (employeeMap.containsKey(empNumber)) {
            employeeName = employeeMap.get(empNumber);
        } else {
            employeeName = ' Please enter a valid employee number.';
        }
        return employeeName;
    }
}
