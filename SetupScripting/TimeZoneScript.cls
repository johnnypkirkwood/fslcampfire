User usr = [SELECT Id, TimeZoneSidKey from User WHERE Name = 'User User'];
    usr.TimeZoneSidKey = 'America/New_York';
    usr.FirstName = 'Technician';
    usr.LastName = 'Tom';
    Update usr;
