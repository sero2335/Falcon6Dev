Map<String,Integer> itemQuantityMap = new Map<String,Integer>();
itemQuantityMap.put('Apple', 5);
itemQuantityMap.put('Orange', 6);
itemQuantityMap.put('Football', 1);
itemQuantityMap.put('LED', 3);
itemQuantityMap.put('Notebooks', 12);
itemQuantityMap.put('Pen', 25);
system.debug(itemQuantityMap);

integer sizeMap = itemQuantityMap.size();
system.debug('The size of the map is => ' + sizeMap);

string getQuantityOf = 'Apple';
integer quantityIS = itemQuantityMap.get(getQuantityOf);
system.debug('The quantity of Apple is => ' + quantityIS);

string getQuantityOf2 = 'Pen';
integer quantityIS2 = itemQuantityMap.get(getQuantityOf2);
system.debug('The quantity of Apple is => ' + quantityIS2);

integer gettheKey = 12;
string getString = itemQuantityMap.get(getTheKey);
system.debug('The key of the value 12 is ' + getString);