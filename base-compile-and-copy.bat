setlocal

rem -------- CONFIG PART --------
set ME3_GAME_DIR=d:\games\Origin Games\Mass Effect 3

rem -------- VARIABLES PART --------
set CURR_DIR=%~dp0
cd %CURR_DIR%
set CURR_DIR=%cd%

set ME3_BASE_COALESCE_DIR=%ME3_GAME_DIR%\BIOGame\CookedPCConsole
set ME3_DLC_DIR=%ME3_GAME_DIR%\BIOGame\DLC

set COMPILER_EXE=%CURR_DIR%\me3coalesced-editor-by-TankMaster\MassEffect3.Coalesce.exe

rem -------- EXEC PART --------
rem -------- BASE --------
"%COMPILER_EXE%" "%CURR_DIR%\base-modded\Coalesced\Coalesced.xml"
xcopy "%CURR_DIR%\base-modded\Coalesced\Coalesced.bin" "%ME3_BASE_COALESCE_DIR%" /Y

rem -------- DLC --------
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_CON_Fitness\Default_DLC_CON_Fitness.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_CON_GUN01\Default_DLC_CON_GUN01.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_CON_GUN02\Default_DLC_CON_GUN02.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_CON_THANEMOD\Default_DLC_CON_THANEMOD.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack001\Default_DLC_EXP_Pack001.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack002\Default_DLC_EXP_Pack002.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack003\Default_DLC_EXP_Pack003.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack003_Base\Default_DLC_EXP_Pack003_Base.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_HEN_PR\Default_DLC_HEN_PR.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM\Default_DLC_MOD_EGM.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM_Extra\Default_DLC_MOD_EGM_Extra.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM_TM2\Default_DLC_MOD_EGM_TM2.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_MOD_ME3Re\Default_DLC_MOD_ME3Re.xml"
"%COMPILER_EXE%" "%CURR_DIR%\dlc-modded\Default_DLC_UPD_Patch02\Default_DLC_UPD_Patch02.xml"

xcopy "%CURR_DIR%\dlc-modded\Default_DLC_CON_Fitness\Default_DLC_CON_Fitness.bin"           "%ME3_DLC_DIR%\DLC_CON_Fitness\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_CON_GUN01\Default_DLC_CON_GUN01.bin"               "%ME3_DLC_DIR%\DLC_CON_GUN01\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_CON_GUN02\Default_DLC_CON_GUN02.bin"               "%ME3_DLC_DIR%\DLC_CON_GUN02\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_CON_THANEMOD\Default_DLC_CON_THANEMOD.bin"         "%ME3_DLC_DIR%\DLC_CON_THANEMOD\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack001\Default_DLC_EXP_Pack001.bin"           "%ME3_DLC_DIR%\DLC_EXP_Pack001\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack002\Default_DLC_EXP_Pack002.bin"           "%ME3_DLC_DIR%\DLC_EXP_Pack002\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack003\Default_DLC_EXP_Pack003.bin"           "%ME3_DLC_DIR%\DLC_EXP_Pack003\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_EXP_Pack003_Base\Default_DLC_EXP_Pack003_Base.bin" "%ME3_DLC_DIR%\DLC_EXP_Pack003_Base\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_HEN_PR\Default_DLC_HEN_PR.bin"                     "%ME3_DLC_DIR%\DLC_HEN_PR\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM\Default_DLC_MOD_EGM.bin"                   "%ME3_DLC_DIR%\DLC_MOD_EGM\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM_Extra\Default_DLC_MOD_EGM_Extra.bin"       "%ME3_DLC_DIR%\DLC_MOD_EGM_Extra\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_MOD_EGM_TM2\Default_DLC_MOD_EGM_TM2.bin"           "%ME3_DLC_DIR%\DLC_MOD_EGM_TM2\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_MOD_ME3Re\Default_DLC_MOD_ME3Re.bin"               "%ME3_DLC_DIR%\DLC_MOD_ME3Re\CookedPCConsole" /Y
xcopy "%CURR_DIR%\dlc-modded\Default_DLC_UPD_Patch02\Default_DLC_UPD_Patch02.bin"           "%ME3_DLC_DIR%\DLC_UPD_Patch02\CookedPCConsole" /Y

endlocal
pause