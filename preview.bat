@echo off
call setenv.bat
echo Press Ctrl-Break to stop webserver
python %bin%/ps.py preview -c %config% -s %section% -l %log% -b
