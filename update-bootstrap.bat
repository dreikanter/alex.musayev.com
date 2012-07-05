@echo off
set bs_source=..\bootstrap\docs\assets
echo Updating Twitter Bootstrap assets from %bs_source%...

if not exist static\css mkdir static\css
copy /y %bs_source%\css\bootstrap.css static\css

rem if not exist static\js mkdir static\js
rem copy /y %bs_source%\js\*.js static\js

echo Done.
