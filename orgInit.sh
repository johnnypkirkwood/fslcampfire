sfdx force:org:create -f config/project-scratch-def.json -d 2 -s -w 30
sfdx force:source:push
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/setup/FieldServiceSettings/home



hello4
