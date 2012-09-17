@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start redmineMongrel1-1

net start redmineMongrel2-1

goto end
:stop

net stop redmineMongrel1-1

net stop redmineMongrel2-1

:end
exit
