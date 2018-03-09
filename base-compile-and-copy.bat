setlocal

rem -------- CONFIG PART --------
set ME3_GAME_DIR=d:\games\Origin Games\Mass Effect 3

rem -------- VARIABLES PART --------
set CURR_DIR=%~dp0
cd %CURR_DIR%
set CURR_DIR=%cd%

set ME3_BASE_COALESCE_DIR=%ME3_GAME_DIR%\BIOGame\CookedPCConsole

set COMPILER_EXE=%CURR_DIR%\me3coalesced-editor-by-TankMaster\MassEffect3.Coalesce.exe

rem -------- EXEC PART --------
"%COMPILER_EXE%" "%CURR_DIR%\base-modded\Coalesced\Coalesced.xml"
xcopy "%CURR_DIR%\base-modded\Coalesced\Coalesced.bin" "%ME3_BASE_COALESCE_DIR%" /Y
endlocal
pause