call env.bat
echo Updating Twitter Bootstrap assets from %bootstrap_path%...
set js_path=static\js
if not exist %js_path% mkdir %js_path%
copy /y %bootstrap_path%\docs\assets\js\bootstrap-collapse.js %js_path%
copy /y %bootstrap_path%\docs\assets\js\bootstrap-transition.js %js_path%

echo Rebuilding stylesheets from LESS...
%ps% build -c %config% -s %section% -l %log% %verbose%

echo Done.
