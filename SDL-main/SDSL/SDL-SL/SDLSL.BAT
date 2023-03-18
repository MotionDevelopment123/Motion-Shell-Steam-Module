@ECHO OFF
CD C:\"Program Files"\SDL\SDL-SL\
set /p STARTUP_APPS=<STARTUP_APPS.LOCATION
for %%i in (%STARTUP_APPS%\*) do start "" "%%~i"
exit