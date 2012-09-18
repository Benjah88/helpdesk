@echo off
rem Populate databases and load default data

CALL C:\PROGRA~1\BITNAM~1\scripts\setenv.bat

cd C:\Program Files\BitNami Redmine Stack/apps/redmine
cmd /C rake config/initializers/session_store.rb
cmd /C rake db:migrate RAILS_ENV="production"
rake redmine:load_default_data RAILS_ENV="production" < lng.txt
		  