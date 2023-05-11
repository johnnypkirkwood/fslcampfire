User usr = [SELECT Id, TimeZoneSidKey from User WHERE Name = 'User User'];
    usr.TimeZoneSidKey = 'America/Chicago';
    usr.FirstName = 'Technician';
    usr.LastName = 'Tom';
    Update usr;
