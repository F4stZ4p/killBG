@echo off
mode con cols=45 lines=10
title osu!killBG
color 0D
set /p timer="Check for BGs every (seconds): "
set /p osufolder="osu! Folder: "
cls
echo Running!
goto :kill_func

:kill_func
timeout -t %timer% -nobreak >nul
del /s /q %osufolder%\Songs\*.png >> killBG.log
del /s /q %osufolder%\Songs\*.jpg >> killBG.log
del /s /q %osufolder%\Songs\*.jpeg >> killBG.log
del /s /q %osufolder%\Songs\*.bmp >> killBG.log
goto :kill_func