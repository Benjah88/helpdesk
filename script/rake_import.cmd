@echo off
CALL C:\PROGRA~1\BITNAM~1\scripts\setenv.bat"
            
cd "C:\Program Files\BitNami Redmine Stack\apps\redmine"
CALL rake redmine:plugins:redmine_ldap_sync:sync_users RAILS_ENV=production