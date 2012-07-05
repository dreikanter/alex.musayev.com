call env.bat
set js_path=www\js

echo Rebuilding stylesheets from LESS...
%ps% build -c %config% -s %section% -l %log% %verbose%

echo Updating Twitter Bootstrap assets from %bootstrap_path%...
if not exist %js_path% mkdir %js_path%
copy /y %bootstrap_path%\docs\assets\js\bootstrap-collapse.js %js_path%
copy /y %bootstrap_path%\docs\assets\js\bootstrap-transition.js %js_path%

echo Done.
