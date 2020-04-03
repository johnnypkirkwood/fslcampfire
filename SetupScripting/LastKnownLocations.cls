List<ServiceResource> srList = [SELECT Id, LastKnownLatitude, LastKnownLongitude, HiddenLKLat__c, HiddenLKLong__c FROM ServiceResource WHERE HiddenLKLat__c !=null];
        List<String> srNames = new List<String>();

        for (ServiceResource s : srList) {
		s.LastKnownLatitude = s.HiddenLKLat__c;
            s.LastKnownLongitude = s.HiddenLKLong__c;
            srNames.add(s.Id);
        }
       
        update srList;

