@echo off
call setenv.bat
python %bin%/ps.py publish -c %config% -s %section% -l %log%
