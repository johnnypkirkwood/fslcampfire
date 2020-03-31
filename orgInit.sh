sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_License
sfdx force:source:retrieve -m PermissionSet:FSL_Admin_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_Permissions
sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:permset:assign -n FSL_Dispatcher_License
sfdx force:user:permset:assign -n FSL_Admin_Permissions
sfdx force:user:permset:assign -n FSL_Dispatcher_Permissions
sfdx force:apex:execute >>User usr = [SELECT Id, username, TimeZoneSidKey from User WHERE Name = 'User User'];
usr.username = usr.username;
usr.TimeZoneSidKey = 'America/New_York';
Update usr;
>>sfdx force:user:password:generate
sfdx force:org:open -p /lightning/page/home
