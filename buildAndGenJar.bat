@echo off

call "%~dp0\gradlew" assembleRelease --no-daemon
IF %ERRORLEVEL% NEQ 0 ( 
   exit 1 
)
call "%~dp0\jar\genJar.bat" %1
IF %ERRORLEVEL% NEQ 0 ( 
   exit 1 
)
pause
