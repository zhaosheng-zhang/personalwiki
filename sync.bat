@echo off
title ͨ�� Git ͬ��.. 
::Start...
echo Start synchronizing...

echo Commit changes...

:: get date and time 
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set fvar=%mydate%%mytime% 

:: add all new files 
git add . 
git commit -a -m "Automated commit on %fvar%"

:: push to the server. Default in "origin" remote, "master" branch
git push