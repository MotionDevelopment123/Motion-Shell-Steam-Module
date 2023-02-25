@ECHO OFF
cd C:\"Program Files"\SDL\
set /p STEAMLOCATION=<STEAM.LOCATION
START /WAIT %STEAMLOCATION% -noverifyfiles -gamepadui
SHUTDOWN -L