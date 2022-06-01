public class Car {
    public string CarColor = '';
    public string CarName = '';
    private integer maxSpeedKMperHour=150;
    public void switchOn(){
        system.debug('starting the car');
    }
    public void drive (){
        system.debug('driving ' + carName);
    }
    public void driveAtMaxSpeed(){
        string Description = 'driving ' + ' at ' + maxSpeedKMperHour + ' km/h';
        System.debug(Description);
    }
}
