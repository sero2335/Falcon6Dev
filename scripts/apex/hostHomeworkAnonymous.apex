string wordCheck = 'Welcome to the Salesforce world, apex is host in this world';
system.debug(wordCheck);

Boolean existCapitalHost = wordCheck.contains('HOST');
system.debug('Does capital HOST exist in the string?: ' + existCapitalHost);

Boolean existSmallCaseHost = wordCheck.contains('host');
system.debug('Does small case host exist in the string?: ' + existSmallCaseHost);


