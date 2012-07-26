@echo off
echo Updating Twitter Bootstrap assets from %bootstrap_path%...
set bootstrap_path=..\bootstrap
set js_path=static\js
if not exist %js_path% mkdir %js_path%
copy /y %bootstrap_path%\js\bootstrap-collapse.js %js_path%
copy /y %bootstrap_path%\js\bootstrap-transition.js %js_path%
