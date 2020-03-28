sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_License
sfdx force:source:retrieve -m PermissionSet:FSL_Admin_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_Permissions
sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:permset:assign -n FSL_Dispatcher_License
sfdx force:user:permset:assign -n FSL_Admin_Permissions
sfdx force:user:permset:assign -n FSL_Dispatcher_Permissions
sfdx force:data:record:update -s FieldServiceMobileSettings -w "Name='Field Service Mobile Settings'" -v "IsTimeSheetEnabled=TRUE"
sfdx force:data:record:update  -s  -v "ExpirationDate=2017-12-01T00:58:04.000+0000"
sfdx force:data:record:update -s  -i 001D000000Kv3dl -v "Name=NewAcme"
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/page/home
