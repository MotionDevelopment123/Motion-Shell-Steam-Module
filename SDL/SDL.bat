@ECHO OFF
CD C:\"Steam Deck Launcher"\Updater\SCRIPTS
START Updater.vbs
CD C:\"Steam Deck Launcher"
set /p STEAMLOCATION=<STEAM.LOCATION
START /WAIT %STEAMLOCATION% -noverifyfiles -gamepadui
set /p CLOSEDLOCATION=<CLOSED.LOCATION
START %CLOSEDLOCATION%

EXIT
