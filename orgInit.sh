sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx force:user:password:generate
sfdx force:apex:execute -f SetupScripting/TimeZoneScript.cls
sfdx force:apex:execute -f SetupScripting/EnableTimeSheets.cls
sfdx force:apex:execute -f SetupScripting/UpdateData.cls
sfdx force:apex:execute -f SetupScripting/LKLCron.cls
sfdx force:org:open -p /lightning/page/home
