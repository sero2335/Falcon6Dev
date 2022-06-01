public class TurkishLesson3 {
    public void welcome() {
        system.debug('Hosgeldiniz..');
    }
    public string firstName;
    public string lastName;
    public string className = 'new batch';
    private string courseName = 'Sotinnovas';

    public void newCourse(string cName){
        courseName = cName;
        system.debug(courseName);
    }

    public string ehliyet(integer age){
        string msg = '';

        if (age<18) {
            msg = 'Ehliyet alamaz..';
        } else {
           msg = 'Ehliyet alabilir..'; 
        }
        return msg;
    }

    public void numberZero(integer x){
        if (x>0) {
            system.debug(x + ' Sayiniz pozitif.'); 
        } else if (x<0) {
            system.debug(x + ' Sayiniz negatif.');  
        } else{
            system.debug(x + ' Sayiniz 0.');  
        }
    }
          
}
