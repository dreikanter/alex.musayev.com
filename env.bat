@echo off
set ps=python ..\public-static\ps.py
rem doskey ps=%ps% $*
set config=website.ini
set section=alex.musayev.com
set log=website.log
rem set verbose=-v
set verbose=
set bootstrap_path=..\bootstrap
