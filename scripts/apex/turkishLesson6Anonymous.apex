//Farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal bir liste olan bir map yazalım..
Map<String, list<decimal>> cityOfHot = new Map<String,list<decimal>>();
List<decimal> istanbulOfHot = new List<decimal>{10.5, 21.3, 12.6,25.3, 13.6, 8.7, 22.2};
cityOfHot.put('istanbul', istanbulOfHot);

List<Decimal> denverOfHot = new List<Decimal>{-3.5, 1.3, 2.6, 5.3, 3.6, 8.7, 2.2};
cityOfHot.put('denver', denverOfHot);

List<Decimal> austinOfHot = new List<Decimal>{7.8, 12.3, 4.5, 23.3, 8.7, 11.3, 12.3};
cityOfHot.put('austin', austinOfHot);

List<Decimal> torontoOfHot = new List<Decimal>{-32,-30,-23,-20,-15,-38,-36};
cityOfHot.put('toronto', torontoOfHot);

List<Decimal> newyorkOfHot = new List<Decimal>{12,10.5,23.4,20,15,18,16};
cityOfHot.put('newyork', newyorkOfHot);

system.debug(cityOfHot);
