call env.bat
echo Rebuilding stylesheets from LESS...

%ps% build -c %config% -s %section% -l %log% %verbose%

set css_path=www\css
set js_path=www\js

if not exist %css_path% mkdir %css_path%

dotless less\bootstrap.less %css_path%\bootstrap.css
dotless less\responsive.less %css_path%\bootstrap-responsive.css

echo Updating Twitter Bootstrap assets from %bootstrap_path%...
if not exist %js_path% mkdir %js_path%

copy /y %bootstrap_path%\docs\assets\js\bootstrap-collapse.js %js_path%
copy /y %bootstrap_path%\docs\assets\js\bootstrap-transition.js %js_path%

echo Done.
