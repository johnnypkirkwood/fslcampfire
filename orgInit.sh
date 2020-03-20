sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx force:source:push
sfdx shane:profile:whitelist -n System Administrator
sfdx shane:profile:whitelist -n FSL Optimization
sfdx force:user:password:generate
sfdx force:org:open -p /lightning/page/home
