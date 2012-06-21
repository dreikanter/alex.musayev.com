@echo off
call setenv.bat
python %bin%/ps.py clean -c %config% -s %section% -l %log% %verbose%
