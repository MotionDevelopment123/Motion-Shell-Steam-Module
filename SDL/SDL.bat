@ECHO OFF
CD C:\"Steam Deck Launcher"\Updater
START Updater.BAT
CD C:\"Steam Deck Launcher"
set /p STEAMLOCATION=<STEAM.LOCATION
START /WAIT %STEAMLOCATION% -noverifyfiles -gamepadui
set /p CLOSEDLOCATION=<CLOSED.LOCATION
START %CLOSEDLOCATION%
CD C:\"Steam Deck Launcher"\Updater
START Updater.BAT

EXIT
