@ECHO OFF
set /p STARTUP_APPS=<STARTUP_APPS.LOCATION
for %%i in (%STARTUP_APPS%\*) do start "" "%%~i"
exit