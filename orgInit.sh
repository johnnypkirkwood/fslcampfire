sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/setup/FieldServiceSettings/home

