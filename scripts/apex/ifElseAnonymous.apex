rankHandler rh = new rankHandler();
string won = rh.rankPrize(2);
system.debug('for rank 2 prize is ' + won);

string won2 = rh.rankPrize(50);
system.debug('for rank 50 prize is ' + won2);

string won3 = rh.rankPrize(1);
system.debug('for rank 1 prize is ' + won3);