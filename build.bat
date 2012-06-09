@echo off
call setenv.bat
python %bin%/ps.py build -c %config% -s %section% -l %log%