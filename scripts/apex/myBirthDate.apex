
// MY BIRTHDAY & THE SUM OF ITS NUMBERS //

Date myBdate = date.newInstance(1981, 6, 12);
system.debug('My birthday is : ' + myBdate);

integer dia = myBdate.day();
integer mes = myBdate.month();
integer ano = myBdate.year();

integer suma = dia + mes + ano;

system.debug('The sum of the numbers in my birthday is : ' + suma);

