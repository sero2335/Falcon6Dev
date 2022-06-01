public class StudentInfo {
    public StudentInfo() {
        system.debug(' Bienvenidos a mi clase de Calculo Diferencial e Integral!! ');
    }

    public void listOfStudentNames(){
        List<string> myStudents = new List<string>();
        
        myStudents.add('Jonathan');
        myStudents.add('Stephanie');
        myStudents.add('Maximiliano');
        myStudents.add('Fernando');
        system.debug('The names of my students are : ' + myStudents);
    }
}
