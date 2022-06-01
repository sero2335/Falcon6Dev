public class Cat {
    public string name;
    public string color;
    public Cat() {
        System.debug('cunstructor called.');
    }

    public Cat(String n, String c){
        this.name = n;
        this.color = c;
        sleeping();
    }
        
    public void sleeping(){
        System.debug(name + ' is sleeping');
    }
}
