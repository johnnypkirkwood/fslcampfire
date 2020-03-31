User usr = [SELECT Id, TimeZoneSidKey from User WHERE Name = 'User User'];
    usr.TimeZoneSidKey = 'America/New_York';
    Update usr;
