sfdx force:source:retrieve -m PermissionSet:FSL_Admin_Permissions
sfdx force:source:retrieve -m PermissionSet:FSL_Dispatcher_Permissions
sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/page/home
