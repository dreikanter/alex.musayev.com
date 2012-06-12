@echo off
call setenv.bat
start cmd /c python %bin%/ps.py preview -c %config% -s %section% -l %log% -b
