public class rankHandler {
    public string rankPrize(integer rank) {
        string prize = '';

        if (rank ==1){
            prize = 'gold';
        }else if(rank == 2){
            prize = 'silver';
        }else if(rank == 3){
            prize = 'bronze';
        }else{
            if (rank <= 10)
                prize = 'Top 10 certificate';
            else{
                prize = 'Participation Certificate';
            }    
        }
    return prize;    
    }
}
