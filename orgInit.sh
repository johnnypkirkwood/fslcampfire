sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_License
sfdx force:source:retrieve -m PermissionSet:FSL_Admin_License
sfdx force:source:retrieve -m PermissionSet:FSL_Mobile_License
sfdx force:source:retrieve -m PermissionSet:FSL_Resource_License
sfdx force:source:retrieve -m PermissionSet:FSL_FSL_Community_Self_Service_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Resource_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Admin_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_Permissions
sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/page/home
