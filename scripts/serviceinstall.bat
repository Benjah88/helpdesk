@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Program Files\BitNami Redmine Stack\ruby\bin\ruby.exe" "C:\Program Files\BitNami Redmine Stack\ruby\bin\mongrel_rails" service::install -N "redmineMongrel1-1" -p 3001 -e production -c "C:\Program Files\BitNami Redmine Stack/apps/redmine" -l "log/mongrel.log" -S "C:\Program Files\BitNami Redmine Stack/apps/redmine\scripts\mongrel_rails_envvars"
sc config redmineMongrel1-1 start= auto
net start redmineMongrel1-1 >NUL
"C:\Program Files\BitNami Redmine Stack\ruby\bin\ruby.exe" "C:\Program Files\BitNami Redmine Stack\ruby\bin\mongrel_rails" service::install -N "redmineMongrel2-1" -p 3002 -e production -c "C:\Program Files\BitNami Redmine Stack/apps/redmine" -l "log/mongrel2.log" -S "C:\Program Files\BitNami Redmine Stack/apps/redmine\scripts\mongrel_rails_envvars"                                                                                                                                     
sc config redmineMongrel2-1 start= auto                                                                                                                                                          
net start redmineMongrel2-1 >NUL

goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineMongrel1-1 >NUL

"C:\Program Files\BitNami Redmine Stack\ruby\bin\ruby.exe" "C:\Program Files\BitNami Redmine Stack\ruby\bin\mongrel_rails" service::remove -N "redmineMongrel1-1"

net stop redmineMongrel2-1 >NUL

"C:\Program Files\BitNami Redmine Stack\ruby\bin\ruby.exe" "C:\Program Files\BitNami Redmine Stack\ruby\bin\mongrel_rails" service::remove -N "redmineMongrel2-1"

:end
pause