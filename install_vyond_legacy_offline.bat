:: Vyond Legacy: Offline Installer
:: Author: joseph the animator#2292
:: License: MIT
title Vyond Legacy: Offline Installer [Initializing...]

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Stop commands from spamming stuff, cleans up the screen
@echo off && cls

:: Lets variables work or something idk im not a nerd
SETLOCAL ENABLEDELAYEDEXPANSION

:: Make sure we're starting in the correct folder, and that it worked (otherwise things would go horribly wrong)
pushd "%~dp0"

:: Check *again* because it seems like sometimes it doesn't go into dp0 the first time???
pushd "%~dp0"

::::::::::::::::::::::::::::
:: Vyond Legacy Installer ::
::::::::::::::::::::::::::::

title Vyond Legacy: Offline Installer
:cls
cls

echo Vyond Legacy: Offline Installer
echo Project led by Joseph Animate 2022. 
echo Installer is created by the Joseph Animate 2022. 
echo:
echo Enter 1 to install Vyond Legacy: Offline
echo Enter 0 to close the installer
:wrapperidle
echo:

:::::::::::::
:: Choices ::
:::::::::::::

set /p CHOICE=Choice:
if "!choice!"=="0" goto exit
if "!choice!"=="1" goto download
echo Time to choose. && goto wrapperidle

:download
cls
pushd "..\..\"
echo Cloning repository from GitHub...
call Vyond-Legacy-Offline-Installer-main\Vyond-Legacy-Offline-Installer-main\PortableGit\bin\git.exe clone https://github.com/josephanimate2021/Vyond-Legacy-Offline.git
pushd Vyond-Legacy-Offline
mkdir .git
echo Vyond Legacy: Offline Has Been Installed
pause
start Vyond-Legacy-Offline
exit

:exit
echo the Vyond Legacy: Offline installer has been closed.
pause & exit
