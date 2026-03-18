@echo off
color 0A
title SYSTEM OVERRIDE

:START
cls

echo Initializing GPU interface...
ping localhost -n 2 >nul

echo Connecting to target system...
ping localhost -n 2 >nul

echo.
echo Running deep file scan...
echo -------------------------------------

:: SHOW actual dir /s output (this is what you wanted)
dir /s C:\Windows

echo.
echo Scan overload detected...
ping localhost -n 2 >nul

:: GPU starts "dying"
echo.
echo [GPU] VRAM BUFFER OVERFLOW
echo [GPU] MEMORY CORRUPTION DETECTED

:: spam corruption lines
for /l %%i in (1,1,20) do (
    echo [VRAM] 0x%%random%% : ERROR
)

echo.
echo WARNING: GPU DRIVER FAILURE
ping localhost -n 2 >nul

echo.
echo CRITICAL: DISPLAY DEVICE LOST

:: flicker effect
for /l %%i in (1,1,8) do (
    cls
    color 0C
    echo *** SIGNAL LOST ***
    ping localhost -n 1 >nul
    cls
    color 0A
    echo Attempting reconnection...
    ping localhost -n 1 >nul
)

echo.
echo Restarting display driver...
ping localhost -n 3 >nul

echo SUCCESS: DISPLAY RESTORED
echo.

ping localhost -n 2 >nul

goto START
