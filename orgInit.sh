sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_License
sfdx force:source:retrieve -m PermissionSet:FSL_Admin_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_Permissions
sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:permset:assign -n FSL_Dispatcher_License
sfdx force:user:permset:assign -n FSL_Admin_Permissions
sfdx force:user:permset:assign -n FSL_Dispatcher_Permissions
sfdx force:user:password:generate
sfdx force:apex:execute -f SetupScripting/TimeZoneScript.cls
sfdx force:apex:execute -f SetupScripting/EnableTimeSheets.cls
sfdx force:apex:execute -f SetupScripting/UpdateData.cls
sfdx force:org:open -p /lightning/page/home
